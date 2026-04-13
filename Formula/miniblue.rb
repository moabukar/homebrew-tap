class Miniblue < Formula
  desc "Local Azure emulator. 26 services, one binary, no account needed"
  homepage "https://github.com/moabukar/miniblue"
  url "https://github.com/moabukar/miniblue/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "ba03737dd6765beeeb6148bf0468d4b755dfa312988b004fe181da280ae69c2c"
  license "MIT"
  head "https://github.com/moabukar/miniblue.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"miniblue", "./cmd/miniblue"
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"azlocal", "./cmd/azlocal"
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
