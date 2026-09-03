class Clipx < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/clipx"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/clipx/releases/download/v0.5.0/clipx_v0.5.0_aarch64-apple-darwin.tar.gz"
      sha256 "a96ceef658cf729ba4e468387603d0b4d901105addb81ba57f838b55f3ca4889"
    end

    on_intel do
      url "https://github.com/harrisonwang/clipx/releases/download/v0.5.0/clipx_v0.5.0_x86_64-apple-darwin.tar.gz"
      sha256 "301a54c4cc039b7517f0b829b17c9ba45b05c3644d0ae9dfa946d3d51275cc1f"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/clipx/releases/download/v0.5.0/clipx_v0.5.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "956de1c43b28c04f639aa2430c73b5e480ee8bd01b324a7a43bfd228daaf1f99"
  end

  def install
    bin.install "clipx"
  end

  test do
    output = shell_output("#{bin}/clipx --version")
    assert_match "clipx", output
  end
end
