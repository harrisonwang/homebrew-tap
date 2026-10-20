class Clipx < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/clipx"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/clipx/releases/download/v0.7.0/clipx_v0.7.0_aarch64-apple-darwin.tar.gz"
      sha256 "b631dfae15ac3380f2428c3411b54f4eee7d9dde84d5c46b2b75a1ac787f6c5f"
    end

    on_intel do
      url "https://github.com/harrisonwang/clipx/releases/download/v0.7.0/clipx_v0.7.0_x86_64-apple-darwin.tar.gz"
      sha256 "e5afc47dae29cd0626c84b68e06cd6a12438e64929f6c8f3264ce1b53e86c974"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/clipx/releases/download/v0.7.0/clipx_v0.7.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "36befe06bdc73cc85d5aabdf8a078e3f135e173c33ceebe2176a5deed0a0d954"
  end

  def install
    bin.install "clipx"
  end

  test do
    output = shell_output("#{bin}/clipx --version")
    assert_match "clipx", output
  end
end
