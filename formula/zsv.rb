# frozen_string_literal: true

class Zsv < Formula
  desc "zsv: tabular data swiss-army knife CLI"
  homepage "https://github.com/liquidaty/zsv"
  license "MIT"
  head "https://github.com/liquidaty/zsv.git", branch: "main"

  AMD64_URL = 'https://github.com/liquidaty/zsv/releases/download/v1.4.3/zsv-1.4.3-amd64-macosx-gcc.tar.gz'
  AMD64_HASH = 'c946030946e481bc52fbef3ab74c895b416a1dba52caa63221e487a81593e5fb'

  ARM64_URL = 'https://github.com/liquidaty/zsv/releases/download/v1.4.3/zsv-1.4.3-arm64-macosx-gcc.tar.gz'
  ARM64_HASH = '11c1e21bdd8378570a209e706178c8691c0f9fcedfb81fc6293d9872b8600d58'

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
