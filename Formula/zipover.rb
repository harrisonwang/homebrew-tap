class Zipover < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/zipover"
  version "1.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.3.7/zipover_v1.3.7_aarch64-apple-darwin.tar.gz"
      sha256 "7b7cbb57957103edb2b5546b5023d2769e9a28b6069b5ad7928911f129216211"
    end

    on_intel do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.3.7/zipover_v1.3.7_x86_64-apple-darwin.tar.gz"
      sha256 "380f7934b526d661f4cdd56443f89fd137a6f116ae0a0e38da410ee4b602472e"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/zipover/releases/download/v1.3.7/zipover_v1.3.7_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ce59617189f1a0a454e2d2300d05154fa45e0ef93aa8984dc2037b24354cb591"
  end

  def install
    bin.install "zipover"
  end

  test do
    output = shell_output("#{bin}/zipover --version")
    assert_match "zipover", output
  end
end
