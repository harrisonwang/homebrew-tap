class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.10.0/spoor_v0.10.0_aarch64-apple-darwin.tar.gz"
      sha256 "b923cbcf5e7e3519561a6e016166d98168c4543d6635c52c574bbd5d0f3b2ed4"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.10.0/spoor_v0.10.0_x86_64-apple-darwin.tar.gz"
      sha256 "fa2da41e5f4f33ea68510c6d5f82ab6bad0451e71d838e401cf5ba2068c29fab"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.10.0/spoor_v0.10.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ce67e0c271d1c651ae529d591bff1618889d998f0568e5fe56f76fba2c197291"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
