class Miniblue < Formula
  desc "Local Azure development. One binary. No account needed."
  homepage "https://github.com/moabukar/miniblue"
  url "https://github.com/moabukar/miniblue/archive/refs/tags/v0.2.3.tar.gz", tag: "v0.2.3"
  license "MIT"

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
