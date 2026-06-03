class Sift < Formula
  desc "Provider-driven technical news radar CLI"
  homepage "https://github.com/harrisonwang/sift"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/sift/releases/download/v0.1.0/sift_v0.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "b733330e9e7d55c2713a8635b0557dac117f4bbe7d88fe625f2ec4a768eb4b7b"
    end

    on_intel do
      url "https://github.com/harrisonwang/sift/releases/download/v0.1.0/sift_v0.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "d8c4df34a0fc5cfcfb86d751ade5b5378896effc06361295be268ec87ad0ab94"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/sift/releases/download/v0.1.0/sift_v0.1.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "236faf0ca613cfc42ddc3090dbffde1c5b2397040db933029fd641cb4fcfe708"
  end

  def install
    bin.install "sift"
  end

  test do
    output = shell_output("#{bin}/sift --version")
    assert_match "sift", output
  end
end
