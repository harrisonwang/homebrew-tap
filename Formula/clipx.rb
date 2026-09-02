class Clipx < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/clipx"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/clipx/releases/download/v0.4.0/clipx_v0.4.0_aarch64-apple-darwin.tar.gz"
      sha256 "d79168922841bb0eebcaad30dbbb2d672a065694ec45862cd536e1863abd0c26"
    end

    on_intel do
      url "https://github.com/harrisonwang/clipx/releases/download/v0.4.0/clipx_v0.4.0_x86_64-apple-darwin.tar.gz"
      sha256 "4f1183c9698f8111525c87ec6ec01eb82bd65ca899ce667505a2977514af06e1"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/clipx/releases/download/v0.4.0/clipx_v0.4.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fca72efbbe4475869d42dbf07171cad903c9957d0b00823bac8c1c33b413b792"
  end

  def install
    bin.install "clipx"
  end

  test do
    output = shell_output("#{bin}/clipx --version")
    assert_match "clipx", output
  end
end
