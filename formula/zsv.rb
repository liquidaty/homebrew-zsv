class Zsv < Formula
  desc "zsv+lib: world's fastest (simd) CSV parser, with an extensible CLI"
  homepage 'https://github.com/liquidaty/zsv'
  url 'https://github.com/liquidaty/zsv/releases/download/v0.3.4-alpha/zsv-0.3.4-alpha-amd64-macosx-gcc.tar.gz'
  head 'https://github.com/liquidaty/zsv.git', branch: 'main'
  license 'MIT'
  sha256 '6f0ec1b6c781490566daf6c5efbf3fda96a76d09a4549f5eb6f7c383c4e551b6'

  def install
    bin.install 'bin/zsv'
  end

  test do
    assert_match /zsv version/, shell_output("#{bin}/zsv version", 2)
  end
end
