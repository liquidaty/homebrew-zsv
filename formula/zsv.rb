class Zsv < Formula
  desc "zsv+lib: world's fastest (simd) CSV parser, with an extensible CLI"
  homepage 'https://github.com/liquidaty/zsv'
  url 'https://github.com/liquidaty/zsv/releases/download/v0.0.4-alpha/zsv-0.0.4-alpha-amd64-macosx-clang.tar.gz'
  head 'https://github.com/liquidaty/zsv.git', branch: 'main'
  license 'MIT'
  version 'v0.0.4-alpha'
  sha256 '28fc51883467008152621b13c02775e808fd623c18a1663228d6daf95a646154'

  def install
    bin.install 'bin/zsv'
  end

  test do
    assert_match 'zsv version 8d56e76', shell_output("#{bin}/zsv version", 2)
  end
end
