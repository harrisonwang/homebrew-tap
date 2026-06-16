class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.9/spoor_v0.8.9_aarch64-apple-darwin.tar.gz"
      sha256 "67c1d720436bac0d6c6f153d2685d3d7f2e93fe1e920eb9ac784d7b55a175ae6"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.9/spoor_v0.8.9_x86_64-apple-darwin.tar.gz"
      sha256 "555bab81337a3812769e0673f25ab476b64383f2ccba57f53829b801fc230942"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.9/spoor_v0.8.9_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9447b89a86ee9004ac410ad358600914ba2a37a29d15f91700846a2f1511d82e"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
