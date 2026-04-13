class Techvault < Formula
  desc "CLI tool for the Tech Vault repo"
  homepage "https://github.com/moabukar/tech-vault-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/moabukar/tech-vault-cli/releases/download/v0.1.0/tech-vault-cli_0.1.0_darwin_amd64.tar.gz"
    sha256 "f682637747e8db579ba9d07f2d3cd9066bf6b8a7b53071e3aaaf1d60aeee9887"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/moabukar/tech-vault-cli/releases/download/v0.1.0/tech-vault-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "19ce2d5a052e25d798e9f0a25a572fc6da86578b6204cd7d9e8f916a75fee92c"
    end
  end

  def install
    bin.install "techvault"
  end

  test do
    system bin/"techvault", "--version"
  end
end
