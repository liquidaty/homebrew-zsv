class Zsv < Formula
  desc "zsv+lib: world's fastest (simd) CSV parser, with an extensible CLI"
  homepage 'https://github.com/liquidaty/zsv'
  head 'https://github.com/liquidaty/zsv.git', branch: 'main'
  license 'MIT'

  AMD64_URL = 'https://github.com/liquidaty/zsv/releases/download/v0.4.3-alpha/zsv-0.4.3-alpha-amd64-macosx-gcc.zip'
  AMD64_HASH = 'f7bae46a84307648d4a12da82d037c4a89c4c3b19d66f9b9dc7f82be18031290'

  ARM64_URL = 'https://github.com/liquidaty/zsv/releases/download/v0.4.3-alpha/zsv-0.4.3-alpha-arm64-macosx-gcc.zip'
  ARM64_HASH = '304149a42d6dbd9d57c7c2828ac54c32dd43b2a433fa105721040d61e420312a'

  if OS.mac?
    if Hardware::CPU.intel?
      url "#{AMD64_URL}"
      sha256 "#{AMD64_HASH}"
    elsif Hardware::CPU.arm?
      url "#{ARM64_URL}"
      sha256 "#{ARM64_HASH}"
    end
  end

  def install
    bin.install 'bin/zsv'
  end

  test do
    assert_match /zsv version/, shell_output("#{bin}/zsv version", 2)
  end
end
