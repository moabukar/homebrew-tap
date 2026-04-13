class Techvault < Formula
  desc "CLI tool for the Tech Vault repo"
  homepage "https://github.com/moabukar/tech-vault-cli"
  url "https://github.com/moabukar/tech-vault-cli/releases/download/v0.1.0/tech-vault-cli_0.1.0_darwin_amd64.tar.gz"
  version "0.1.0"
  sha256 "f682637747e8db579ba9d07f2d3cd9066bf6b8a7b53071e3aaaf1d60aeee9887"
  license "MIT"

  def install
    bin.install "techvault"
  end

  test do
    system bin/"techvault", "--version"
  end
end
