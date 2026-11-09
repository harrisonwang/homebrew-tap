class Zipover < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/zipover"
  version "1.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.3.6/zipover_v1.3.6_aarch64-apple-darwin.tar.gz"
      sha256 "379e84976e398b179281272837ba2e787c638c098355a5aa33f519abe3791913"
    end

    on_intel do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.3.6/zipover_v1.3.6_x86_64-apple-darwin.tar.gz"
      sha256 "2aed0260d6c2850e32edab31610cd49aec9fc85c926f524cc7dd75062474fa80"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/zipover/releases/download/v1.3.6/zipover_v1.3.6_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cc9c26dcd5b02348c6ce9d00933fa53946d41e0e4f1d71585e4d4416d8fe509b"
  end

  def install
    bin.install "zipover"
  end

  test do
    output = shell_output("#{bin}/zipover --version")
    assert_match "zipover", output
  end
end
