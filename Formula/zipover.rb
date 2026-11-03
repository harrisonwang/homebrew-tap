class Zipover < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/zipover"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.3.1/zipover_v1.3.1_aarch64-apple-darwin.tar.gz"
      sha256 "c281c96a6a417b6f013c7a9a6e546e8738a1c5a2e2cfd0ce502f51da85f76cae"
    end

    on_intel do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.3.1/zipover_v1.3.1_x86_64-apple-darwin.tar.gz"
      sha256 "c735123185776574f18247d2cb95fa89141d81b86bdd70e5ee822c60599b64e8"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/zipover/releases/download/v1.3.1/zipover_v1.3.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "77ab5d8e79404b02a04cea12cd2e1d6a4822f66e8067dc581f255d1bc745bdaf"
  end

  def install
    bin.install "zipover"
  end

  test do
    output = shell_output("#{bin}/zipover --version")
    assert_match "zipover", output
  end
end
