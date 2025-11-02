# frozen_string_literal: true

class Zsv < Formula
  desc "zsv: tabular data swiss-army knife CLI"
  homepage "https://github.com/liquidaty/zsv"
  license "MIT"
  head "https://github.com/liquidaty/zsv.git", branch: "main"

  AMD64_URL = 'https://github.com/liquidaty/zsv/releases/download/v1.1.0/zsv-1.1.0-amd64-macosx-gcc.tar.gz'
  AMD64_HASH = '19634c54175c102460abe42c504adf553ce8f25c21be93e6c24c425384cbe2fd'

  ARM64_URL = 'https://github.com/liquidaty/zsv/releases/download/v1.1.0/zsv-1.1.0-arm64-macosx-gcc.tar.gz'
  ARM64_HASH = '7ab00ede80cfe747b7b9f4c2c3b2f29fafab746eb8269b22a862f1c81bfaae4c'

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
