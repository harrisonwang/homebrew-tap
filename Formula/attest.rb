class Attest < Formula
  desc "Document regression testing for repository facts"
  homepage "https://github.com/harrisonwang/attest"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/attest/releases/download/v0.1.0/attest-macos-aarch64.tar.gz"
      sha256 "b510e3eeec0be3e68fbff11d732f6c0370994764cfef2a13e32bc46da61ef13f"
    end

    on_intel do
      url "https://github.com/harrisonwang/attest/releases/download/v0.1.0/attest-macos-x86_64.tar.gz"
      sha256 "7a645de902d58876bae45db610848b43b258c06a69e34c1c30d99d3fd0b7a941"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/harrisonwang/attest/releases/download/v0.1.0/attest-linux-aarch64.tar.gz"
      sha256 "4ab77adc78e2b80c643b0b209e5ec63ef728d1f53937d784a0cf3b150752ba7d"
    end

    on_intel do
      url "https://github.com/harrisonwang/attest/releases/download/v0.1.0/attest-linux-x86_64.tar.gz"
      sha256 "b65f4ac7638154f4f718b43d7ae8ff3ffd5d031c46260535869f0eebbdac7eac"
    end
  end

  def install
    bin.install "attest"
  end

  test do
    assert_match "attest", shell_output("#{bin}/attest --version")
  end
end
