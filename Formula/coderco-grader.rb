class CodercoGrader < Formula
  desc "Automated assessment tool for DevOps projects (ECS & EKS)"
  homepage "https://github.com/moabukar/coderco-grader"
  version "3.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/coderco-grader/releases/download/v3.1.0/coderco-grader_3.1.0_darwin_arm64.tar.gz"
      sha256 "c7b5c13e2559a13d6926cb7cca29842e0708e24c6c491294fa3bf0e097af1676"
    else
      url "https://github.com/moabukar/coderco-grader/releases/download/v3.1.0/coderco-grader_3.1.0_darwin_amd64.tar.gz"
      sha256 "b81271d15a13360d86d8b592c6fcd8c0972fa76928a1ac05063af9ef27905e3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/coderco-grader/releases/download/v3.1.0/coderco-grader_3.1.0_linux_arm64.tar.gz"
      sha256 "617c08faa40abf3dd75915f234d65332e566545ecea412eeb51c87f58bd8fb0b"
    else
      url "https://github.com/moabukar/coderco-grader/releases/download/v3.1.0/coderco-grader_3.1.0_linux_amd64.tar.gz"
      sha256 "f9b839d5f7e0024caa75483d5be6265057bbb76e0cdf826bc109dc70a98927e0"
    end
  end

  def install
    bin.install Dir["coderco-grader-*"].first => "coderco-grader"
  end

  test do
    system "#{bin}/coderco-grader", "--help"
  end
end
