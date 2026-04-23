class FreeeTimepunch < Formula
  desc "freee HR APIを使ったタイムレコーダーCLI"
  homepage "https://github.com/yoshihito-hanada/freee-timepunch"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yoshihito-hanada/homebrew-tap/releases/download/freee-timepunch-v0.1.0/freee-timepunch_v0.1.0_darwin_arm64.tar.gz"
      sha256 "260d23106b60989d6ec18719a5069d1cd4516d2037197c3b1b009e7566c68b22"
    end
    on_intel do
      url "https://github.com/yoshihito-hanada/homebrew-tap/releases/download/freee-timepunch-v0.1.0/freee-timepunch_v0.1.0_darwin_amd64.tar.gz"
      sha256 "1b569951da6f27a294896a429fc9c36ebbadd807a68574638ccfece0fca9bc8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yoshihito-hanada/homebrew-tap/releases/download/freee-timepunch-v0.1.0/freee-timepunch_v0.1.0_linux_arm64.tar.gz"
      sha256 "42852a8332277b42a0486d807021a35b16fccc32cbf0239ce1947c01ca34493b"
    end
    on_intel do
      url "https://github.com/yoshihito-hanada/homebrew-tap/releases/download/freee-timepunch-v0.1.0/freee-timepunch_v0.1.0_linux_amd64.tar.gz"
      sha256 "d3b7bdd9aee78b1e508891035a11a398a4ea6b79a88ce4b534ed3884cd5953a0"
    end
  end

  def install
    bin.install "freee-timepunch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/freee-timepunch --version")
  end
end
