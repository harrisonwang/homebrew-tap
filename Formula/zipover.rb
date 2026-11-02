class Zipover < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/zipover"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.3.0/zipover_v1.3.0_aarch64-apple-darwin.tar.gz"
      sha256 "8a4ee96e36c3120f76be764f2fd883d28f712193c9b9615367cdf8f0b27fe01b"
    end

    on_intel do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.3.0/zipover_v1.3.0_x86_64-apple-darwin.tar.gz"
      sha256 "734ff4b1575d6dcb53d61ab5decbe3d0a8c660478ffc9a6b4d02b8d3bf6d763e"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/zipover/releases/download/v1.3.0/zipover_v1.3.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "82f270f36acccde48c6e26a6909e0f3f977e23fb27ae3a39754dd10318c9e23b"
  end

  def install
    bin.install "zipover"
  end

  test do
    output = shell_output("#{bin}/zipover --version")
    assert_match "zipover", output
  end
end
