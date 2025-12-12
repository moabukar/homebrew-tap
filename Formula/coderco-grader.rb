class CodercoGrader < Formula
  desc "Automated assessment tool for DevOps projects (ECS & EKS)"
  homepage "https://github.com/moabukar/coderco-grader"
  version "4.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/coderco-grader/releases/download/v4.0.0/coderco-grader_4.0.0_darwin_arm64.tar.gz"
      sha256 "e6c627645062b1f19ae16b44d8b2c4e10e73fd2fafc2e0f40499f14c365bbf7a"
    else
      url "https://github.com/moabukar/coderco-grader/releases/download/v4.0.0/coderco-grader_4.0.0_darwin_amd64.tar.gz"
      sha256 "4233dc4e3b505a914a40f72a6d2600a998b1a583c83ec5f14268c9adbed45f76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/coderco-grader/releases/download/v4.0.0/coderco-grader_4.0.0_linux_arm64.tar.gz"
      sha256 "3737e6e822c4be73089b4b980b78e13d5124b9da82962a403dcd9e8c8ba2fc0b"
    else
      url "https://github.com/moabukar/coderco-grader/releases/download/v4.0.0/coderco-grader_4.0.0_linux_amd64.tar.gz"
      sha256 "0238bcce481c82f4452de535fa43e214311841d3635b29e51dd5ae5964f670f5"
    end
  end

  def install
    bin.install Dir["coderco-grader-*"].first => "coderco-grader"
  end

  test do
    system "#{bin}/coderco-grader", "--help"
  end
end
