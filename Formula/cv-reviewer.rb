class CvReviewer < Formula
  desc "Config-driven CV/Resume reviewer CLI for DevOps engineers"
  homepage "https://github.com/moabukar/cv-reviewer"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/cv-reviewer/releases/download/v0.1.0/cv-reviewer_0.1.0_darwin_arm64.tar.gz"
      sha256 "1d9f996ed047db8c6105eff202165eb4dffbbf61d2932266ef346a31f23a327a"
    else
      url "https://github.com/moabukar/cv-reviewer/releases/download/v0.1.0/cv-reviewer_0.1.0_darwin_amd64.tar.gz"
      sha256 "5e8d5479879163fd98c5446befb1326a1547a41e045d476cbb6aa1ec73cdcd0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/cv-reviewer/releases/download/v0.1.0/cv-reviewer_0.1.0_linux_arm64.tar.gz"
      sha256 "77cbfa69344a503fe296e2b480c232951517b3ce6b7506fc4095235640069e43"
    else
      url "https://github.com/moabukar/cv-reviewer/releases/download/v0.1.0/cv-reviewer_0.1.0_linux_amd64.tar.gz"
      sha256 "9855dc9bc33e06e99e56766d31e5572896cdc83b22fc6d808488fd7f98d8e0ed"
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
