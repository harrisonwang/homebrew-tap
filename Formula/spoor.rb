class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.11.0/spoor_v0.11.0_aarch64-apple-darwin.tar.gz"
      sha256 "df996e87710a976cb6bc93d92e7972f5efd0753af4d3671939d3a4e532ee98a0"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.11.0/spoor_v0.11.0_x86_64-apple-darwin.tar.gz"
      sha256 "119adfa64e09f7b6ecb494e352e9f30023fbc2a38797a597e313f5c549635805"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.11.0/spoor_v0.11.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ebea6819c34edaa1348700571b1c0c9067ff3acfddde1a1569cb9ada7b9e5234"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
