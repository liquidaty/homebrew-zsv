# frozen_string_literal: true

class Zsv < Formula
  desc "zsv: tabular data swiss-army knife CLI"
  homepage "https://github.com/liquidaty/zsv"
  license "MIT"
  head "https://github.com/liquidaty/zsv.git", branch: "main"

  AMD64_URL = 'https://github.com/liquidaty/zsv/releases/download/v1.0.1/zsv-1.0.1-amd64-macosx-gcc.tar.gz'
  AMD64_HASH = '0870de5b4a43b1e902dc78051dae68549a39b5c52e54b1a5316f541da8efe1ea'

  ARM64_URL = 'https://github.com/liquidaty/zsv/releases/download/v1.0.1/zsv-1.0.1-arm64-macosx-gcc.tar.gz'
  ARM64_HASH = '79c93751b8e21bc2869eae51a9a548aaa1c0e4d83af20f4e5cfc86f0c3afb1d5'

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
