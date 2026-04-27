class Ephew < Formula
  desc "Local verbosity-toggle proxy for the Anthropic API"
  homepage "https://github.com/etherops/ephew"
  url "https://github.com/etherops/ephew/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ad635c8340d44e22a24de4c792cd90152e83b3fc0731f9810d87511fd27b0a85"
  license "MIT"
  head "https://github.com/etherops/ephew.git", branch: "main"

  depends_on "python@3.12"

  # We deliberately do NOT use Language::Python::Virtualenv with `resource` blocks
  # because that mixin enforces `pip install --no-binary :all:`, which forces source
  # builds of every dep — including `pyobjc-core` and `pyobjc-framework-Cocoa`,
  # whose C extensions need a current macOS SDK. On Macs where Xcode and CLT SDK
  # versions don't perfectly align, that compile fails.
  #
  # Instead we let pip resolve and install ephew (with --prefer-binary), so pip
  # uses prebuilt wheels for pyobjc when available and only falls back to source
  # for pure-Python packages. This matches what `pipx install ephew` would do.
  def install
    venv = libexec
    system Formula["python@3.12"].opt_bin/"python3.12", "-m", "venv", venv
    system venv/"bin/pip", "install", "--upgrade", "pip"
    system venv/"bin/pip", "install", "--prefer-binary", buildpath
    bin.install_symlink venv/"bin/ephew"
  end

  test do
    assert_match "ephew #{version}", shell_output("#{bin}/ephew --version")
  end
end
