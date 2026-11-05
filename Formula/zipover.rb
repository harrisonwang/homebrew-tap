class Zipover < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/zipover"
  version "1.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.3.4/zipover_v1.3.4_aarch64-apple-darwin.tar.gz"
      sha256 "3845c547f5a9007f2fc4719455e7599aec85aa052f26ce7238df54bcf4481e60"
    end

    on_intel do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.3.4/zipover_v1.3.4_x86_64-apple-darwin.tar.gz"
      sha256 "ea3b56cdc686761eff461207a828e53f33a8a579a171d3b942f222ba307b48ce"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/zipover/releases/download/v1.3.4/zipover_v1.3.4_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c1353a95641e55b07dbd840492077966c2ea82069d6ba4fdd2bf5189ffd18d3b"
  end

  def install
    bin.install "zipover"
  end

  test do
    output = shell_output("#{bin}/zipover --version")
    assert_match "zipover", output
  end
end
