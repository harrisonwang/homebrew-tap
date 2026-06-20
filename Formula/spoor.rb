class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.10/spoor_v0.8.10_aarch64-apple-darwin.tar.gz"
      sha256 "9ed2090f3b2f50ff9de9472e13fd97a7eed158222126f8d796bbe6723718815b"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.10/spoor_v0.8.10_x86_64-apple-darwin.tar.gz"
      sha256 "c2196a606bf8e87fe541e48aeef4a1dd42f543d283e8238a0a5847e4e5ac8dbd"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.10/spoor_v0.8.10_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "93af30aaa0c4517c71ea4ac9626f59e601d97e9d6dfb549118cb816876965f74"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
