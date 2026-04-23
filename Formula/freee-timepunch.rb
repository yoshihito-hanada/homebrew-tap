class FreeTimepunch < Formula
  desc "freee HR APIを使ったタイムレコーダーCLI"
  homepage "https://github.com/yoshihito-hanada/freee-timepunch"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yoshihito-hanada/homebrew-tap/releases/download/freee-timepunch-v0.0.7/freee-timepunch_v0.0.7_darwin_arm64.tar.gz"
      sha256 "7920e82173e288571e0c4674d30c0f0e751a37f08763379232a462860dde8722"
    end
    on_intel do
      url "https://github.com/yoshihito-hanada/homebrew-tap/releases/download/freee-timepunch-v0.0.7/freee-timepunch_v0.0.7_darwin_amd64.tar.gz"
      sha256 "793d247727af70a4a97548a64b6c53da0c8cf6e22ea560095bea3ebfaa11e677"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yoshihito-hanada/homebrew-tap/releases/download/freee-timepunch-v0.0.7/freee-timepunch_v0.0.7_linux_arm64.tar.gz"
      sha256 "c0909e3d5d9b5fd9e6e31a0a7692f70dfd010d9ca4f425c06e48c217aecd4571"
    end
    on_intel do
      url "https://github.com/yoshihito-hanada/homebrew-tap/releases/download/freee-timepunch-v0.0.7/freee-timepunch_v0.0.7_linux_amd64.tar.gz"
      sha256 "639b09dd53f0d806310b54c0c6ada0bf5c0f84912b0fce26df6f1c8d0ba7db1b"
    end
  end

  def install
    bin.install "freee-timepunch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/freee-timepunch --version")
  end
end
