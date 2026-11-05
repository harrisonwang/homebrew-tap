class Zipover < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/zipover"
  version "1.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.3.5/zipover_v1.3.5_aarch64-apple-darwin.tar.gz"
      sha256 "99acbbf3f6f1391204e0619c0835831940aada96b340a6a46620275f824fbd9c"
    end

    on_intel do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.3.5/zipover_v1.3.5_x86_64-apple-darwin.tar.gz"
      sha256 "06674613c39080e0c4cf80ab8e6e3fbc876c243fe1e2c971a6804cac1bbebfc9"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/zipover/releases/download/v1.3.5/zipover_v1.3.5_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "70cb76438cf0980bb53dbbe08a34021f182525195ba69aae103a84fc5725ac34"
  end

  def install
    bin.install "zipover"
  end

  test do
    output = shell_output("#{bin}/zipover --version")
    assert_match "zipover", output
  end
end
