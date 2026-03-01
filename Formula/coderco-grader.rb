class CodercoGrader < Formula
  desc "Automated assessment tool for DevOps projects (ECS & EKS)"
  homepage "https://github.com/moabukar/coderco-grader"
  version "4.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/coderco-grader/releases/download/v4.1.0/coderco-grader_4.1.0_darwin_arm64.tar.gz"
      sha256 "44c67d3c7924dcec0f3cb1b3a156cd3c4e8719f756086b3e41759d3dfa8b4cac"
    else
      url "https://github.com/moabukar/coderco-grader/releases/download/v4.1.0/coderco-grader_4.1.0_darwin_amd64.tar.gz"
      sha256 "41795e68ecbb32b695a67735dadd3404fe5d7dd9c05bf22933e60017ceb89138"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/coderco-grader/releases/download/v4.1.0/coderco-grader_4.1.0_linux_arm64.tar.gz"
      sha256 "3959152270c6b7094d2246afa3ee7a7791e65aeda2fce331e4b10a6e68f8468a"
    else
      url "https://github.com/moabukar/coderco-grader/releases/download/v4.1.0/coderco-grader_4.1.0_linux_amd64.tar.gz"
      sha256 "2e8a811eb8934d4c97e6adbbce2df7701f71d44d35cea337c422679e42771a97"
    end
  end

  def install
    bin.install Dir["coderco-grader-*"].first => "coderco-grader"
  end

  test do
    system "#{bin}/coderco-grader", "--help"
  end
end
