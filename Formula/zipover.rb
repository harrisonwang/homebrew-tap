class Zipover < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/zipover"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/zipover/releases/download/v0.9.1/zipover_v0.9.1_aarch64-apple-darwin.tar.gz"
      sha256 "60d6dfa5a44b1bea9785fe7fb7ccb7d82ec86940c829b883d717bb9046066375"
    end

    on_intel do
      url "https://github.com/harrisonwang/zipover/releases/download/v0.9.1/zipover_v0.9.1_x86_64-apple-darwin.tar.gz"
      sha256 "c2d4aa9eaffadf4530975a3ed845d229425f95416cd8eb61abc51f44e9fd6d66"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/zipover/releases/download/v0.9.1/zipover_v0.9.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ce94cc9671e1a5cdd6878df1b223a57074d2532c178d9c5a476b6d01dee09cd0"
  end

  def install
    bin.install "zipover"
  end

  test do
    output = shell_output("#{bin}/zipover --version")
    assert_match "zipover", output
  end
end
