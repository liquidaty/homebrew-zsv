class Zsv < Formula
  desc "zsv+lib: world's fastest (simd) CSV parser, with an extensible CLI"
  homepage 'https://github.com/liquidaty/zsv'
  head 'https://github.com/liquidaty/zsv.git', branch: 'main'
  license 'MIT'

  AMD64_URL = 'https://github.com/liquidaty/zsv/releases/download/v0.4.1-alpha/zsv-0.4.1-alpha-amd64-macosx-gcc.zip'
  AMD64_HASH = '3575ae51d6009f8ffb3a47fd371b8c3faf8fac1647b005cc96bebb09f27ad926'

  ARM64_URL = 'https://github.com/liquidaty/zsv/releases/download/v0.4.1-alpha/zsv-0.4.1-alpha-arm64-macosx-gcc.zip'
  ARM64_HASH = '4b28dbc5bf58e432aa8327bfcd20101c776d1b032eb928f6c0d9d985a6821b02'

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
