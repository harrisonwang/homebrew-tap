class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.13.0/spoor_v0.13.0_aarch64-apple-darwin.tar.gz"
      sha256 "11de56ed3e363d4852a63889ac930697d28894ad4dd3b4326d3973927f567420"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.13.0/spoor_v0.13.0_x86_64-apple-darwin.tar.gz"
      sha256 "8dac2b8501250cb9cc71c587d6f53989dd29315c871cf816c5c3c9ab71ae33e5"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.13.0/spoor_v0.13.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "67bb926d741c21aad9d5810922fb70985bb751932ece74c16e957a81149602da"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
