class Miniblue < Formula
  desc "Local Azure emulator. 26 services, one binary, no account needed"
  homepage "https://github.com/moabukar/miniblue"
  url "https://github.com/moabukar/miniblue/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "b033d312ab185ab6f4d9070e0bb515e0a34573820462ae37f05b242db03b2e20"
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
