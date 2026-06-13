class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.4/spoor_v0.8.4_aarch64-apple-darwin.tar.gz"
      sha256 "740f26b7c52dce14d7380f3df13ee3dc740fe44090acf8dbad8a5524175be036"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.4/spoor_v0.8.4_x86_64-apple-darwin.tar.gz"
      sha256 "abd1794cd09cb96e52b680aeec9e66da21f63e650ab4b6320bd2fa672dcf706c"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.4/spoor_v0.8.4_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "698181967d275f433f7f5cef6f39e40c75008c29c2684953de33596ccec13385"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
