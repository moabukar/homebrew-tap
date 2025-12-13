class CvReviewer < Formula
  desc "Config-driven CV/Resume reviewer CLI for DevOps engineers"
  homepage "https://github.com/moabukar/cv-reviewer"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/cv-reviewer/releases/download/v0.1.0/cv-reviewer_0.1.0_darwin_arm64.tar.gz"
      sha256 "9384ab3b1ae718090ab392492b842146dc9f9d45ed232a3bf287466d7c7adbf8"
    else
      url "https://github.com/moabukar/cv-reviewer/releases/download/v0.1.0/cv-reviewer_0.1.0_darwin_amd64.tar.gz"
      sha256 "2c5fea9045e7a43353b62789bf08c0ccfb87f44f5aac5aea4d946a29a47f916b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/cv-reviewer/releases/download/v0.1.0/cv-reviewer_0.1.0_linux_arm64.tar.gz"
      sha256 "10f279a44201846bebf46b97e84d82c36b12a1ec26b713c9d9dad7875ff4bee5"
    else
      url "https://github.com/moabukar/cv-reviewer/releases/download/v0.1.0/cv-reviewer_0.1.0_linux_amd64.tar.gz"
      sha256 "ef1a5a6104acd1bbfa95bc539efc2fd25d3a39eacf6b9c5e9ec51ced4af5066e"
    end
  end

  depends_on "poppler" => :recommended

  def install
    bin.install Dir["cv-reviewer-*"].first => "cv-reviewer"
  end

  test do
    system "#{bin}/cv-reviewer", "version"
  end
end
