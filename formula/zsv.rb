# frozen_string_literal: true

class Zsv < Formula
  desc "zsv: tabular data swiss-army knife CLI"
  homepage "https://github.com/liquidaty/zsv"
  license "MIT"
  head "https://github.com/liquidaty/zsv.git", branch: "main"

  AMD64_URL = 'https://github.com/liquidaty/zsv/releases/download/v1.4.2/zsv-1.4.2-amd64-macosx-gcc.tar.gz'
  AMD64_HASH = '9a6f06e2446a4d794206d5957510cc131f405ed76d1e71e7d18bb672fa0e63d8'

  ARM64_URL = 'https://github.com/liquidaty/zsv/releases/download/v1.4.2/zsv-1.4.2-arm64-macosx-gcc.tar.gz'
  ARM64_HASH = 'abcd59b71617ef0debcbf37de84004bc8ccbb92704982faf536be90a060152e5'

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
