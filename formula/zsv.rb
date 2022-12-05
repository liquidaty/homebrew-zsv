class Zsv < Formula
  desc "zsv+lib: world's fastest (simd) CSV parser, with an extensible CLI"
  homepage 'https://github.com/liquidaty/zsv'
  url 'https://github.com/liquidaty/zsv/releases/download/v0.3.4-alpha/zsv-0.3.4-alpha-amd64-macosx-gcc.tar.gz'
  head 'https://github.com/liquidaty/zsv.git', branch: 'main'
  license 'MIT'
  sha256 '18b7a8ae8f0f310442f698f10e2b8f247dd179c5eeeec42d46041f83f2f3f58f'

  def install
    bin.install 'bin/zsv'
  end

  test do
    assert_match /zsv version/, shell_output("#{bin}/zsv version", 2)
  end
end
