class Zipover < Formula
  desc "Sync clipboard and files across devices on a LAN"
  homepage "https://github.com/harrisonwang/zipover"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.3.2/zipover_v1.3.2_aarch64-apple-darwin.tar.gz"
      sha256 "5c84b733bbfe5df33de412f26cead4edab25724cc1617d58c9a34bf418be7602"
    end

    on_intel do
      url "https://github.com/harrisonwang/zipover/releases/download/v1.3.2/zipover_v1.3.2_x86_64-apple-darwin.tar.gz"
      sha256 "45bf733c2586ddb66484f8d19367fe71fee469d165f888f48ea2f91e61b2327f"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/zipover/releases/download/v1.3.2/zipover_v1.3.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3506543c1f111de43d1c718957f168bcf711fe42eaef64b2ff4cf07a792b1991"
  end

  def install
    bin.install "zipover"
  end

  test do
    output = shell_output("#{bin}/zipover --version")
    assert_match "zipover", output
  end
end
