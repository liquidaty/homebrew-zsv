# frozen_string_literal: true

class Zsv < Formula
  desc "zsv: tabular data swiss-army knife CLI"
  homepage "https://github.com/liquidaty/zsv"
  license "MIT"
  head "https://github.com/liquidaty/zsv.git", branch: "main"

  AMD64_URL = 'https://github.com/liquidaty/zsv/releases/download/v1.3.0/zsv-1.3.0-amd64-macosx-gcc.tar.gz'
  AMD64_HASH = '3997fff799b3b41142fa5f8ea7db4e854d71ac74e00e20e159758929bd76621a'

  ARM64_URL = 'https://github.com/liquidaty/zsv/releases/download/v1.3.0/zsv-1.3.0-arm64-macosx-gcc.tar.gz'
  ARM64_HASH = '16e569703cd732a999b08b4299e8795389ed659f70bbd255d05f896c37f8c4dd'

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
