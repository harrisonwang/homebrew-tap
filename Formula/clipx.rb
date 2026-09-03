class Clipx < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/clipx"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/clipx/releases/download/v0.6.0/clipx_v0.6.0_aarch64-apple-darwin.tar.gz"
      sha256 "c6884be43c94ffae59c7bf7f9b6530b45072f9faf9c12b2abf9ead00c30ebc1f"
    end

    on_intel do
      url "https://github.com/harrisonwang/clipx/releases/download/v0.6.0/clipx_v0.6.0_x86_64-apple-darwin.tar.gz"
      sha256 "9b10a398f1ca2e256c8daa7166976007eb4c52bfbab00f43e7f97a197b4c3676"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/clipx/releases/download/v0.6.0/clipx_v0.6.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a0c3fb0aee4b926d67c90df995f072597b6f68ebc2d13d58b1eb9483beaf4422"
  end

  def install
    bin.install "clipx"
  end

  test do
    output = shell_output("#{bin}/clipx --version")
    assert_match "clipx", output
  end
end
