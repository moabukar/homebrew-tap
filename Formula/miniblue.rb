class Miniblue < Formula
  desc "Local Azure emulator. 26 services, one binary, no account needed"
  homepage "https://github.com/moabukar/miniblue"
  url "https://github.com/moabukar/miniblue/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "2def4baea9d81dd1ab181de4a59b8f0e6608fc6efda58130619f6f2e6d5c0fc2"
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
