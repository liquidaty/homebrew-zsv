class Zsv < Formula
  desc "zsv+lib: world's fastest (simd) CSV parser, with an extensible CLI"
  homepage 'https://github.com/liquidaty/zsv'
  url 'https://github.com/liquidaty/zsv/releases/download/v0.3.4-alpha/zsv-0.3.4-alpha-amd64-macosx-gcc.tar.gz'
  head 'https://github.com/liquidaty/zsv.git', branch: 'main'
  license 'MIT'
  sha256 '90a281b251dc73b896713892edc69a1aa5e2a1855a377ce75d2d7ab55d6c059b'

  def install
    bin.install 'bin/zsv'
  end

  test do
    assert_match /zsv version/, shell_output("#{bin}/zsv version", 2)
  end
end
