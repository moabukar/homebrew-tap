class CodercoGrader < Formula
  desc "Automated assessment tool for DevOps projects (ECS & EKS)"
  homepage "https://github.com/moabukar/coderco-grader"
  version "3.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/coderco-grader/releases/download/v3.0.0/coderco-grader_3.0.0_darwin_arm64.tar.gz"
      sha256 "9e54002032e38b4cddf04de9d84341e9808f530ebea469532556a70f4394dfba"
    else
      url "https://github.com/moabukar/coderco-grader/releases/download/v3.0.0/coderco-grader_3.0.0_darwin_amd64.tar.gz"
      sha256 "73fbf6ef5cf401c847190921e557b8378dc6dfa67b1cd920c5ada8d6da75fc30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/coderco-grader/releases/download/v3.0.0/coderco-grader_3.0.0_linux_arm64.tar.gz"
      sha256 "a28d8a0d0de2be89f24f54705dd62f605d02609866d3e62ad56ae33af8db92d7"
    else
      url "https://github.com/moabukar/coderco-grader/releases/download/v3.0.0/coderco-grader_3.0.0_linux_amd64.tar.gz"
      sha256 "e16108d18c54d16bb99e3e7ac249d294df9b2658bba25bd6c6aba9395f971156"
    end
  end

  def install
    bin.install Dir["coderco-grader-*"].first => "coderco-grader"
  end

  test do
    system "#{bin}/coderco-grader", "--help"
  end
end
