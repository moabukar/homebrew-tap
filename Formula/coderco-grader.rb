class CodercoGrader < Formula
  desc "Automated assessment tool for DevOps projects (ECS & EKS)"
  homepage "https://github.com/moabukar/coderco-grader"
  version "4.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/coderco-grader/releases/download/v4.2.0/coderco-grader_4.2.0_darwin_arm64.tar.gz"
      sha256 "2e8128a5d9356b4d71b0b8b285315f61a330de1899347ad0bdc271f6a12ca3f7"
    else
      url "https://github.com/moabukar/coderco-grader/releases/download/v4.2.0/coderco-grader_4.2.0_darwin_amd64.tar.gz"
      sha256 "ef3e38b4837231f379657118e5ab57161b50921d05d09c5f0c14af167bbdfed4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/coderco-grader/releases/download/v4.2.0/coderco-grader_4.2.0_linux_arm64.tar.gz"
      sha256 "8c70ed5e83280eeb93c789401ce5dd20eb385b21f6e5729135e1a240e9f0a002"
    else
      url "https://github.com/moabukar/coderco-grader/releases/download/v4.2.0/coderco-grader_4.2.0_linux_amd64.tar.gz"
      sha256 "bc8c87d20fd371b6f48c0375c172a4ce8b5d54a27e99733e7757a4aa1eb57518"
    end
  end

  def install
    bin.install Dir["coderco-grader-*"].first => "coderco-grader"
  end

  test do
    system "#{bin}/coderco-grader", "--help"
  end
end
