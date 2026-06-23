class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.15/spoor_v0.8.15_aarch64-apple-darwin.tar.gz"
      sha256 "19ab717a2a2008675b2270efba58d0c2743adea27155842630d09fb0959df220"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.15/spoor_v0.8.15_x86_64-apple-darwin.tar.gz"
      sha256 "01b54cfb2d91bbb9523699d54cf14a9cac17ae52ed59becc9a158f69d349a110"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.15/spoor_v0.8.15_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ed83eab38b825c3a47ec61bb9b540dc5c8b138826235da43793ee8d3fafd6d1e"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
