class CvReviewer < Formula
  desc "Config-driven CV/Resume reviewer CLI for DevOps engineers"
  homepage "https://github.com/moabukar/cv-reviewer"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/cv-reviewer/releases/download/v0.1.0/cv-reviewer_0.1.0_darwin_arm64.tar.gz"
      sha256 "c6de206e04c81acd2b18a1ad9a3bfe96c8779c96e3e09ed5d70eca47a1d037cd"
    else
      url "https://github.com/moabukar/cv-reviewer/releases/download/v0.1.0/cv-reviewer_0.1.0_darwin_amd64.tar.gz"
      sha256 "f1f498fd8dca337e829d29a84ab48ea98cf360496dff2384c4e9c34cce1877fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/cv-reviewer/releases/download/v0.1.0/cv-reviewer_0.1.0_linux_arm64.tar.gz"
      sha256 "63e5c5650843ec5a791ed7b13b23752a467dab2a1fd1aef08bc7f56280e7f577"
    else
      url "https://github.com/moabukar/cv-reviewer/releases/download/v0.1.0/cv-reviewer_0.1.0_linux_amd64.tar.gz"
      sha256 "acbcdecbba6b1410b38e1db7ed26b6dcc413ac0b40e252be86cf17567c3b01d9"
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
