class Msd < Formula
  desc "Detect model substitution through local AI clients"
  homepage "https://github.com/harrisonwang/model-substitution-detector"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/model-substitution-detector/releases/download/v0.2.0/msd_v0.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "f7db59f5f4cf09ba9e0bcc8c8f75aea7a941dc43793695799fe6b0806cbef7d7"
    end

    on_intel do
      url "https://github.com/harrisonwang/model-substitution-detector/releases/download/v0.2.0/msd_v0.2.0_x86_64-apple-darwin.tar.gz"
      sha256 "7b624f1d9875fdb9836a97c05cbf4852dd40eb1bb2b8618a8cf71ed25b384897"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/harrisonwang/model-substitution-detector/releases/download/v0.2.0/msd_v0.2.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a87eb453767a5f47a185b35e85412527266d436c4b1fc117beec4e58fad6ddb0"
  end

  def install
    bin.install "msd"
  end

  test do
    assert_match "msd 0.2.0", shell_output("#{bin}/msd --version")
  end
end
