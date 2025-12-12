class CodercoGrader < Formula
  desc "Automated assessment tool for DevOps projects (ECS & EKS)"
  homepage "https://github.com/moabukar/coderco-grader"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/coderco-grader/releases/download/v2.0.0/coderco-grader_2.0.0_darwin_arm64.tar.gz"
      sha256 "66dd58b7b2147fb5543d38050094d680fcdedd6faee5782db4f25a456a92ae1e"
    else
      url "https://github.com/moabukar/coderco-grader/releases/download/v2.0.0/coderco-grader_2.0.0_darwin_amd64.tar.gz"
      sha256 "9b505e96766ab88e9a3166873018d8143075f42dfd2906d817e25c972d67af25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/coderco-grader/releases/download/v2.0.0/coderco-grader_2.0.0_linux_arm64.tar.gz"
      sha256 "76c8f214f5fe78787447d185817a6f82c817a9e39bd75418eb43613ff0623718"
    else
      url "https://github.com/moabukar/coderco-grader/releases/download/v2.0.0/coderco-grader_2.0.0_linux_amd64.tar.gz"
      sha256 "410aa3022a256a8ada927ba0eb38bc5900acbde8a4d2066b205333cecdeb5d2c"
    end
  end

  def install
    bin.install Dir["coderco-grader-*"].first => "coderco-grader"
  end

  test do
    system "#{bin}/coderco-grader", "--help"
  end
end
