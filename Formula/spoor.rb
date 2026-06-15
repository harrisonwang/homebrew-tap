class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.8/spoor_v0.8.8_aarch64-apple-darwin.tar.gz"
      sha256 "6ba4559db3d904eff89c43234535d44b4ea3cfeac5e3e9a0b082f5c254d55fe1"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.8/spoor_v0.8.8_x86_64-apple-darwin.tar.gz"
      sha256 "7fc9bb2b927b46595d51620eda1223ec9748d17cd77316c5bbe7b5cb3d481b15"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.8/spoor_v0.8.8_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e3e8e969d0040f2f4f803ac7371bd9253b098c141980fcfd6dec5e3a7e870e74"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
