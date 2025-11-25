# frozen_string_literal: true

class Zsv < Formula
  desc "zsv: tabular data swiss-army knife CLI"
  homepage "https://github.com/liquidaty/zsv"
  license "MIT"
  head "https://github.com/liquidaty/zsv.git", branch: "main"

  AMD64_URL = 'https://github.com/liquidaty/zsv/releases/download/v1.2.0/zsv-1.2.0-amd64-macosx-gcc.tar.gz'
  AMD64_HASH = '21d0c6d0bffe63053077b163cef6f8e21898cdb3e266c5af5d04e3dfea996b4b'

  ARM64_URL = 'https://github.com/liquidaty/zsv/releases/download/v1.2.0/zsv-1.2.0-arm64-macosx-gcc.tar.gz'
  ARM64_HASH = '30b371f0a24c476bf70bc4af69e43372706c76ec8946a2aa98e586cafef8c663'

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
