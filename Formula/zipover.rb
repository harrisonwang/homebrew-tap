class Zipover < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/zipover"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.2.0/zipover_v1.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "19f82c35bfc99701c06409b3806d479d2d938dc67d43d15376e34727a0e56109"
    end

    on_intel do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.2.0/zipover_v1.2.0_x86_64-apple-darwin.tar.gz"
      sha256 "27581db1de1d7aa0b26b385279a4a669b428b105ec34af5908d65f501aa77cda"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/zipover/releases/download/v1.2.0/zipover_v1.2.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a5d0fc2f4f29a02dfb9118d90d12522c9386b30bd0d58f2f901c346e2bc0b5e3"
  end

  def install
    bin.install "zipover"
  end

  test do
    output = shell_output("#{bin}/zipover --version")
    assert_match "zipover", output
  end
end
