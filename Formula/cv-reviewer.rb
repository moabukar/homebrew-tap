class CvReviewer < Formula
  desc "Config-driven CV/Resume reviewer CLI for DevOps engineers"
  homepage "https://github.com/moabukar/cv-reviewer"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/cv-reviewer/releases/download/v0.1.0/cv-reviewer_0.1.0_darwin_arm64.tar.gz"
      sha256 "cf2a5fac01f04fbe523ca7ee84cef9c1fdb047bf0483986796610c89ba9014f7"
    else
      url "https://github.com/moabukar/cv-reviewer/releases/download/v0.1.0/cv-reviewer_0.1.0_darwin_amd64.tar.gz"
      sha256 "3f4af709bed184f6fc92c889042f73dcdff0c28e75e78dee0b0a2f5d8b66b523"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/cv-reviewer/releases/download/v0.1.0/cv-reviewer_0.1.0_linux_arm64.tar.gz"
      sha256 "af8759f65c3bb952a86336fe06b362ba4cc269b6019dfcf39894eae9278bcc5a"
    else
      url "https://github.com/moabukar/cv-reviewer/releases/download/v0.1.0/cv-reviewer_0.1.0_linux_amd64.tar.gz"
      sha256 "ee931b8636965d460f4845c7ce9896d2bab3bcff03c5e2113fd224f4cc158f69"
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
