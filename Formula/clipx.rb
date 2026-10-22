class Clipx < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/clipx"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/clipx/releases/download/v0.8.0/clipx_v0.8.0_aarch64-apple-darwin.tar.gz"
      sha256 "7937bf2b9afa2f6f476e02a7031d39e38f3c771516da85ddb5261bbf30ca5605"
    end

    on_intel do
      url "https://github.com/harrisonwang/clipx/releases/download/v0.8.0/clipx_v0.8.0_x86_64-apple-darwin.tar.gz"
      sha256 "8b150339012f43393ef444f1def7a3fad06bbadb278fb9256a70e0a0d7617da4"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/clipx/releases/download/v0.8.0/clipx_v0.8.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dd5acd86d42211817805c017a9bfe12ea7d97f14161a2cff5683f8268db0a2bf"
  end

  def install
    bin.install "clipx"
  end

  test do
    output = shell_output("#{bin}/clipx --version")
    assert_match "clipx", output
  end
end
