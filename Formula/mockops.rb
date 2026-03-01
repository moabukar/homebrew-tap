class Mockops < Formula
  include Language::Python::Virtualenv

  desc "Interactive CLI tool for practicing DevOps interview questions"
  homepage "https://github.com/moabukar/mockops"
  url "https://github.com/moabukar/mockops/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "9f424d7e771d1e04d0e44b7769d22ca9cd05590768e720abc678c4df63cb67ec"
  license "MIT"

  depends_on "python@3.11"

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  def install
    virtualenv_install_with_resources

    # Copy question data into the share directory
    (share/"mockops").install "data"
  end

  test do
    assert_match "interview", shell_output("#{bin}/mockops --help")
  end
end
