class Zsv < Formula
  desc "zsv+lib: world's fastest (simd) CSV parser, with an extensible CLI"
  homepage 'https://github.com/liquidaty/zsv'
  head 'https://github.com/liquidaty/zsv.git', branch: 'main'
  license 'MIT'

  AMD64_URL = 'https://github.com/liquidaty/zsv/releases/download/v0.4.4-alpha/zsv-0.4.4-alpha-amd64-macosx-gcc.tar.gz'
  AMD64_HASH = '1818002d815a1f2dde11adca369fa1912a93dfb0732e570fa269320526f10846'

  ARM64_URL = 'https://github.com/liquidaty/zsv/releases/download/v0.4.4-alpha/zsv-0.4.4-alpha-arm64-macosx-gcc.tar.gz'
  ARM64_HASH = '3683fccfacf3db260b3c3b77ddcc571a480ff84a16328fd9c96d1d0b6a366709'

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
