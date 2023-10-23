class Techvault < Formula
    desc "CLI tool for the Tech Vault repo"
    homepage "https://github.com/moabukar/tech-vault-cli"
    # url "https://github.com/moabukar/tech-vault-cli/releases/download/v0.1.0/tech-vault-cli_0.1.0_darwin_amd64.tar.gz"
    # sha256 "f682637747e8db579ba9d07f2d3cd9066bf6b8a7b53071e3aaaf1d60aeee9887"
    license "MIT"
  
    on_macos do
        if Hardware::CPU.intel?
          url "https://github.com/moabukar/tech-vault-cli/releases/download/v0.1.0/tech-vault-cli_0.1.0_darwin_amd64.tar.gz"
          sha256 "f682637747e8db579ba9d07f2d3cd9066bf6b8a7b53071e3aaaf1d60aeee9887"
    
          def install
            bin.install "techvault"
          end
        end
        # if Hardware::CPU.arm?
        #   url "https://github.com/moabukar/tech-vault-cli/releases/download/v0.1.0/tech-vault-cli_0.1.0_darwin_amd64.tar.gz"
        #   sha256 "9444b0a267c3c04775563159ddfffb7d4bae2d71427c6c8c0d14b30b65e059a4"
    
        #   def install
        #     bin.install "techvault"
        #   end
        # end
      end
      on_linux do
        # if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        #   url "https://github.com/moabukar/tech-vault-cli/releases/download/v0.1.0/techvault_v0.1.0_linux_arm64.tar.gz"
        #   sha256 "c275a1c762253b42c5a294fddf035d68d4cd978875aa1face900c3232fc51cc6"
    
        #   def install
        #     bin.install "techvault"
        #   end
        # end
        # if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
        #   url "https://github.com/moabukar/tech-vault-cli/releases/download/v0.1.0/techvault_v0.1.0_linux_armv6.tar.gz"
        #   sha256 "3900f41a56344677373e8839c9fc59f050fcc83825f056162ec52fa389c35d2b"
    
        #   def install
        #     bin.install "techvault"
        #   end
        # end
        if Hardware::CPU.intel?
          url "https://github.com/moabukar/tech-vault-cli/releases/download/v0.1.0/tech-vault-cli_0.1.0_linux_amd64.tar.gz"
          sha256 "19ce2d5a052e25d798e9f0a25a572fc6da86578b6204cd7d9e8f916a75fee92c"
    
          def install
            bin.install "techvault"
          end
        end
      end
end
  