# frozen_string_literal: true

class Zsv < Formula
  desc "zsv: tabular data swiss-army knife CLI"
  homepage "https://github.com/liquidaty/zsv"
  license "MIT"
  head "https://github.com/liquidaty/zsv.git", branch: "main"

  AMD64_URL = "https://github.com/liquidaty/zsv/releases/download/v1.0.0/zsv-1.0.0-amd64-macosx-gcc.tar.gz"
  AMD64_HASH = "e7e79e7b76b8f154d43190b792a944ac61e0ca0b0def4d23eaff5470f1d64f90"

  ARM64_URL = "https://github.com/liquidaty/zsv/releases/download/v1.0.0/zsv-1.0.0-arm64-macosx-gcc.tar.gz"
  ARM64_HASH = "42b6ce98654f87a01ae31579749a786d4cd50857f2475bcb053650e229f7d617"

  on_macos do
    on_intel do
      url AMD64_URL
      sha256 AMD64_HASH
    end
    on_arm do
      url ARM64_URL
      sha256 ARM64_HASH
    end
  end

  def install
    bin.install "bin/zsv"
  end

  test do
    assert_match /zsv version/, shell_output("#{bin}/zsv version", 2)
  end
end
