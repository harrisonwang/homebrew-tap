class Zipover < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/zipover"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.0.0/zipover_v1.0.0_aarch64-apple-darwin.tar.gz"
      sha256 "dc25239d59083380fdcd7f0f02bb4a4a4e2a1b5bb7b82e6e757b26fb7ab8cc56"
    end

    on_intel do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.0.0/zipover_v1.0.0_x86_64-apple-darwin.tar.gz"
      sha256 "48653dde4422e8852e9d5c6706172f92283dbeb753f30bfd4500f6a5da845fed"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/zipover/releases/download/v1.0.0/zipover_v1.0.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f95f2606257dbf2dc59c555a4a31c3fa4267f678c3818e3dd3841f7b3de37232"
  end

  def install
    bin.install "zipover"
  end

  test do
    output = shell_output("#{bin}/zipover --version")
    assert_match "zipover", output
  end
end
