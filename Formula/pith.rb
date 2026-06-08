class Pith < Formula
  desc "Convert files and URLs to LLM-friendly markdown"
  homepage "https://github.com/harrisonwang/pith"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/pith/releases/download/v0.7.0/pith_v0.7.0_aarch64-apple-darwin.tar.gz"
      sha256 "157ec93093f8bd4cd2d2d25c3e320926e0cd8d112e302234eb8497300f3db0ff"
    end

    on_intel do
      url "https://github.com/harrisonwang/pith/releases/download/v0.7.0/pith_v0.7.0_x86_64-apple-darwin.tar.gz"
      sha256 "c31b5a54977b3d89b77c4b29027ed95ee4bcfb8449ff5197e5bf17771979ace8"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/pith/releases/download/v0.7.0/pith_v0.7.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e65ca495dc374bfc227aac64db34afb5777c617aed0b970f8ea6740587d1eda5"
  end

  def install
    bin.install "pith"
  end

  test do
    output = shell_output("#{bin}/pith --version")
    assert_match "pith", output
  end
end
