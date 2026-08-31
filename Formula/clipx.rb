class Clipx < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/clipx"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/clipx/releases/download/v0.2.0/clipx_v0.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "03500de40955e75ebcd9980342868642f291ef0f48f595c5ede2718a397fcaee"
    end

    on_intel do
      url "https://github.com/harrisonwang/clipx/releases/download/v0.2.0/clipx_v0.2.0_x86_64-apple-darwin.tar.gz"
      sha256 "32c3ab2df103a15761a79567a001fac570e97b735c45aa2b8915bf40166c670d"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/clipx/releases/download/v0.2.0/clipx_v0.2.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dff372b6427ccd6547ed968d840384e4e68ac4f5360c3542b28a0b229eb39d94"
  end

  def install
    bin.install "clipx"
  end

  test do
    output = shell_output("#{bin}/clipx --version")
    assert_match "clipx", output
  end
end
