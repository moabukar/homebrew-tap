class Miniblue < Formula
  desc "Local Azure emulator. 26 services, one binary, no account needed"
  homepage "https://github.com/moabukar/miniblue"
  url "https://github.com/moabukar/miniblue/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "f032be6d61d205257d43a5a93126b46835668597bcfe629a82c641fa7197dcd6"
  license "MIT"
  head "https://github.com/moabukar/miniblue.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/moabukar/miniblue/internal/server.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "-o", bin/"miniblue", "./cmd/miniblue"
    system "go", "build", *std_go_args(ldflags: ldflags), "-o", bin/"azlocal", "./cmd/azlocal"
  end

  test do
    fork do
      exec bin/"miniblue"
    end
    sleep 2
    output = shell_output("curl -sf http://localhost:4566/health")
    assert_match "running", output
  end
end
