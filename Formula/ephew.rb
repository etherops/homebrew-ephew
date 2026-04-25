class Ephew < Formula
  include Language::Python::Virtualenv

  desc "Local verbosity-toggle proxy for the Anthropic API"
  homepage "https://github.com/etherops/ephew"
  url "https://github.com/etherops/ephew/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "92e8120e0d08a43ec59d87a6fa6f6d35d63ad374337d65694b3d29ae01693018"
  license "MIT"
  head "https://github.com/etherops/ephew.git", branch: "main"

  depends_on "python@3.12"

  # `pydantic_core` (transitive via fastapi -> pydantic) is written in Rust;
  # Homebrew forces source builds (`--no-binary :all:`) so we need a Rust
  # toolchain available at install time.
  depends_on "rust" => :build

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/19/14/2c5dd9f512b66549ae92767a9c7b330ae88e1932ca57876909410251fe13/anyio-4.13.0.tar.gz"
    sha256 "334b70e641fd2221c1505b3890c69882fe4a2df910cba14d97019b90b24439dc"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/25/ee/6caf7a40c36a1220410afe15a1cc64993a1f864871f698c0f93acb72842a/certifi-2026.4.22.tar.gz"
    sha256 "8d455352a37b71bf76a79caa83a3d6c25afee4a385d632127b6afb3963f1c580"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/bb/63/f9e1ea081ce35720d8b92acde70daaedace594dc93b693c869e0d5910718/click-8.3.3.tar.gz"
    sha256 "398329ad4837b2ff7cbe1dd166a4c0f8900c3ca3a218de04466f38f6497f18a2"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/5d/45/c130091c2dfa061bbfe3150f2a5091ef1adf149f2a8d2ae769ecaf6e99a2/fastapi-0.136.1.tar.gz"
    sha256 "7af665ad7acfa0a3baf8983d393b6b471b9da10ede59c60045f49fbc89a0fa7f"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ce/cc/762dfb036166873f0059f3b7de4565e1b5bc3d6f28a414c13da27e442f99/idna-3.13.tar.gz"
    sha256 "585ea8fe5d69b9181ec1afba340451fba6ba764af97026f92a91d4eef164a242"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/d9/e4/40d09941a2cebcb20609b86a559817d5b9291c49dd6f8c87e5feffbe703a/pydantic-2.13.3.tar.gz"
    sha256 "af09e9d1d09f4e7fe37145c1f577e1d61ceb9a41924bf0094a36506285d0a84d"
  end

  resource "pydantic_core" do
    url "https://files.pythonhosted.org/packages/2a/ef/f7abb56c49382a246fd2ce9c799691e3c3e7175ec74b14d99e798bcddb1a/pydantic_core-2.46.3.tar.gz"
    sha256 "41c178f65b8c29807239d47e6050262eb6bf84eb695e41101e62e38df4a5bc2c"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/b8/b6/d5612eb40be4fd5ef88c259339e6313f46ba67577a95d86c3470b951fce0/pyobjc_core-12.1.tar.gz"
    sha256 "2bb3903f5387f72422145e1466b3ac3f7f0ef2e9960afa9bcd8961c5cbf8bd21"
  end

  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/02/a3/16ca9a15e77c061a9250afbae2eae26f2e1579eb8ca9462ae2d2c71e1169/pyobjc_framework_cocoa-12.1.tar.gz"
    sha256 "5556c87db95711b985d5efdaaf01c917ddd41d148b1e52a0c66b1a2e2c5c1640"
  end

  resource "rumps" do
    url "https://files.pythonhosted.org/packages/b2/e2/2e6a47951290bd1a2831dcc50aec4b25d104c0cf00e8b7868cbd29cf3bfe/rumps-0.4.0.tar.gz"
    sha256 "17fb33c21b54b1e25db0d71d1d793dc19dc3c0b7d8c79dc6d833d0cffc8b1596"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/81/69/17425771797c36cded50b7fe44e850315d039f28b15901ab44839e70b593/starlette-1.0.0.tar.gz"
    sha256 "6a4beaf1f81bb472fd19ea9b918b50dc3a77a6f2e190a12954b25e6ed5eea149"
  end

  resource "typing_extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/1f/93/041fca8274050e40e6791f267d82e0e2e27dd165627bd640d3e0e378d877/uvicorn-0.46.0.tar.gz"
    sha256 "fb9da0926999cc6cb22dc7cd71a94a632f078e6ae47ff683c5c420750fb7413d"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ephew #{version}", shell_output("#{bin}/ephew --version")
  end
end
