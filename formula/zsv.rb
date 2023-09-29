class Zsv < Formula
  desc "zsv+lib: world's fastest (simd) CSV parser, with an extensible CLI"
  homepage 'https://github.com/liquidaty/zsv'
  url 'https://github.com/liquidaty/zsv/releases/download/v0.3.7-alpha/zsv-0.3.7-alpha-amd64-macosx-gcc.tar.gz'
  head 'https://github.com/liquidaty/zsv.git', branch: 'main'
  license 'MIT'
  sha256 '1559f03c8bc4d5dc36e2b3b66a2cc129f879aecf76d8d800941e2b3728f17339'

  def install
    bin.install 'bin/zsv'
  end

  test do
    assert_match /zsv version/, shell_output("#{bin}/zsv version", 2)
  end
end
