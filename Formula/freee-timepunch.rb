class FreeTimepunch < Formula
  desc "freee HR APIを使ったタイムレコーダーCLI"
  homepage "https://github.com/yoshihito-hanada/freee-timepunch"
  version "0.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yoshihito-hanada/homebrew-tap/releases/download/freee-timepunch-#{version}/freee-timepunch_#{version}_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/yoshihito-hanada/homebrew-tap/releases/download/freee-timepunch-#{version}/freee-timepunch_#{version}_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yoshihito-hanada/homebrew-tap/releases/download/freee-timepunch-#{version}/freee-timepunch_#{version}_linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/yoshihito-hanada/homebrew-tap/releases/download/freee-timepunch-#{version}/freee-timepunch_#{version}_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "freee-timepunch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/freee-timepunch --version")
  end
end
