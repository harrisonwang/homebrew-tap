class Zipover < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/zipover"
  version "1.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.3.3/zipover_v1.3.3_aarch64-apple-darwin.tar.gz"
      sha256 "ec61f462d654e22cedc4294109a85fd5bc97acaa33c9ed052fa48aa3eccb7002"
    end

    on_intel do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.3.3/zipover_v1.3.3_x86_64-apple-darwin.tar.gz"
      sha256 "320f5412993a402c4028082cdae1e97787815805abf95102c1fa8ef81f0ba27f"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/zipover/releases/download/v1.3.3/zipover_v1.3.3_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fb7ecfbd4571094674ed3f79a0c5e6154db93e30e1a557558de55a26328c67c7"
  end

  def install
    bin.install "zipover"
  end

  test do
    output = shell_output("#{bin}/zipover --version")
    assert_match "zipover", output
  end
end
