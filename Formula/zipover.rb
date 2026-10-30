class Zipover < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/zipover"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.1.0/zipover_v1.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "ce3dfc42b1db7ee6a75d8efaba7fcdf8ca11d8df86e76fdcc83c09342efc10ea"
    end

    on_intel do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.1.0/zipover_v1.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "a082b0d8d8e7a8269474ec3b920f9f94f022106b8ba8f5595b6cf4c730154b75"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/zipover/releases/download/v1.1.0/zipover_v1.1.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ce94404af3570b27bdb920991f4e73345983954f4a6cd28166eaf38b3ded77e8"
  end

  def install
    bin.install "zipover"
  end

  test do
    output = shell_output("#{bin}/zipover --version")
    assert_match "zipover", output
  end
end
