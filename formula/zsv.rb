# frozen_string_literal: true

class Zsv < Formula
  desc "zsv: tabular data swiss-army knife CLI"
  homepage "https://github.com/liquidaty/zsv"
  license "MIT"
  head "https://github.com/liquidaty/zsv.git", branch: "main"

  AMD64_URL = 'https://github.com/liquidaty/zsv/releases/download/v1.4.0/zsv-1.4.0-amd64-macosx-gcc.tar.gz'
  AMD64_HASH = '41f366fb45ecd89603cfa916b957392adbe246ba354ca14412a1b9127dbc986c'

  ARM64_URL = 'https://github.com/liquidaty/zsv/releases/download/v1.4.0/zsv-1.4.0-arm64-macosx-gcc.tar.gz'
  ARM64_HASH = '85112e5a48c3172317d99584b0aa42b73af52c1f01ac8865d7f7bb0428039172'

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
