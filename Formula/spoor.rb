class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.18/spoor_v0.8.18_aarch64-apple-darwin.tar.gz"
      sha256 "4397b6bd05aca2050035a6b6e11fa5c6c990ac4f8b6e8eb0dfb959aae35dfb2b"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.18/spoor_v0.8.18_x86_64-apple-darwin.tar.gz"
      sha256 "e7cd7986ab9390d08726ba39c91f753c7a81e34c15a236d7d0b2032ebcec4c12"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.18/spoor_v0.8.18_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "aa71b872cc1da355697e7e46f71a8cf3d2af5bfe212007b18bba0f690f4a092a"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
