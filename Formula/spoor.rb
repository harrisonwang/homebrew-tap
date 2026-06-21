class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.11/spoor_v0.8.11_aarch64-apple-darwin.tar.gz"
      sha256 "bfa94b8b908b6ac0ee0b86b87422bc85271f0233860e2b46c8465f1a5ba6cf7a"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.11/spoor_v0.8.11_x86_64-apple-darwin.tar.gz"
      sha256 "d1abbcd55d15e4c60a616688d8c21dc025bff31279b7c244f5262777283ca28c"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.11/spoor_v0.8.11_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8a62cc619080b8142e45efd5ad58e10fa2ec38df516e36656195018f06ff69e1"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
