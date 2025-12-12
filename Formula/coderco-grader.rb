class CodercoGrader < Formula
  desc "Automated assessment tool for DevOps projects (ECS & EKS)"
  homepage "https://github.com/moabukar/coderco-grader"
  version "3.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/coderco-grader/releases/download/v3.0.0/coderco-grader_3.0.0_darwin_arm64.tar.gz"
      sha256 "83c502ce9d19f9e9b3c81ae2b46cdcaef64e0f4cd545e26b156d855662512e8e"
    else
      url "https://github.com/moabukar/coderco-grader/releases/download/v3.0.0/coderco-grader_3.0.0_darwin_amd64.tar.gz"
      sha256 "58ce7144a103aac6b51a3476600127c4618bc81540fe49049ec0dd7b7f1d1714"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/moabukar/coderco-grader/releases/download/v3.0.0/coderco-grader_3.0.0_linux_arm64.tar.gz"
      sha256 "63e180dcecb319d5f044fa6d1309a5dba2d9ceb62e26fb984e17f6fd2051560e"
    else
      url "https://github.com/moabukar/coderco-grader/releases/download/v3.0.0/coderco-grader_3.0.0_linux_amd64.tar.gz"
      sha256 "018f814a5e5fc01122dd17873dd3ab158c399492bb3084aec6725e7989d6a5fe"
    end
  end

  def install
    bin.install Dir["coderco-grader*"].first => "coderco-grader"
  end

  test do
    system "#{bin}/coderco-grader", "--help"
  end
end
