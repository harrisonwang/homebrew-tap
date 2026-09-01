class Clipx < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/clipx"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/clipx/releases/download/v0.3.0/clipx_v0.3.0_aarch64-apple-darwin.tar.gz"
      sha256 "fcae869ad3d875a1404f3a73ad0ac4f50b829e587ec88169f09104c45902bedc"
    end

    on_intel do
      url "https://github.com/harrisonwang/clipx/releases/download/v0.3.0/clipx_v0.3.0_x86_64-apple-darwin.tar.gz"
      sha256 "bf493903eddfad7f7b5dafdc57bb1de2a87a62d53c3e81292a8e30533378e384"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/clipx/releases/download/v0.3.0/clipx_v0.3.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a6de5a17b02740997f58b744d7971773730c2077a72e9ee1cf7f23ef0b809d11"
  end

  def install
    bin.install "clipx"
  end

  test do
    output = shell_output("#{bin}/clipx --version")
    assert_match "clipx", output
  end
end
