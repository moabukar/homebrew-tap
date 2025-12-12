class CodercoGrader < Formula
  desc "Automated assessment tool for DevOps projects (ECS & EKS)"
  homepage "https://github.com/moabukar/coderco-grader"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/coderco-grader/releases/download/v#{version}/coderco-grader_#{version}_darwin_arm64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_FOR_DARWIN_ARM64"
    else
      url "https://github.com/moabukar/coderco-grader/releases/download/v#{version}/coderco-grader_#{version}_darwin_amd64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_FOR_DARWIN_AMD64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/coderco-grader/releases/download/v#{version}/coderco-grader_#{version}_linux_arm64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_FOR_LINUX_ARM64"
    else
      url "https://github.com/moabukar/coderco-grader/releases/download/v#{version}/coderco-grader_#{version}_linux_amd64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_FOR_LINUX_AMD64"
    end
  end

  def install
    bin.install "coderco-grader"
  end

  test do
    assert_match "CoderCo Project Grader", shell_output("#{bin}/coderco-grader --help")
  end
end