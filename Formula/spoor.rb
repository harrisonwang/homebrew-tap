class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.8.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.14/spoor_v0.8.14_aarch64-apple-darwin.tar.gz"
      sha256 "b7ca5b85971314aaf25a3af0643267ac1f0ec0928038441d0be2a76e9cd7effc"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.8.14/spoor_v0.8.14_x86_64-apple-darwin.tar.gz"
      sha256 "a9e5c2891b1cda6885ccaed20f9660734f6e722a1fc2b897d6a9427f5b6adb46"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.8.14/spoor_v0.8.14_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "20cafca37fb8734967099582e31aba5eff0e33c098d5741e77d8049df91349ca"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
