class EcsGrader < Formula
    desc "CLI tool to automatically assess ECS deployment projects"
    homepage "https://github.com/moabukar/ecs-grader"
    version "1.1.0"
    
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/moabukar/ecs-grader/releases/download/v1.1.0/ecs-grader-darwin-arm64.tar.gz"
        sha256 "REPLACE_WITH_ARM64_SHA256"
      else
        url "https://github.com/moabukar/ecs-grader/releases/download/v1.1.0/ecs-grader-darwin-amd64.tar.gz"
        sha256 "REPLACE_WITH_AMD64_SHA256"
      end
    end
  
    on_linux do
      url "https://github.com/moabukar/ecs-grader/releases/download/v1.1.0/ecs-grader-linux-amd64.tar.gz"
      sha256 "REPLACE_WITH_LINUX_SHA256"
    end
  
    def install
      bin.install "ecs-grader"
    end
  
    test do
      assert_match "ECS Project Grading Tool", shell_output("#{bin}/ecs-grader --help")
    end
  end