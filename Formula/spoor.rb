class Spoor < Formula
  desc "Convert documents to LLM-friendly text — Markdown for prose, JSON for tables"
  homepage "https://github.com/harrisonwang/spoor"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.14.0/spoor_v0.14.0_aarch64-apple-darwin.tar.gz"
      sha256 "b43be9ab559dbae730ff24596824626244e80e403e2d3a4958ae4bf0fb6dda91"
    end

    on_intel do
      url "https://github.com/harrisonwang/spoor/releases/download/v0.14.0/spoor_v0.14.0_x86_64-apple-darwin.tar.gz"
      sha256 "a7a1388c86f1f7e3ec656aa53ca97414dec656acd6f89b7833fb8f3873a3ec33"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/spoor/releases/download/v0.14.0/spoor_v0.14.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0d94b379ee8ca7c714e6aa9cc80c5f1a074627bddc4471b4517781b5efc128b6"
  end

  def install
    bin.install "spoor"
  end

  test do
    output = shell_output("#{bin}/spoor --version")
    assert_match "spoor", output
  end
end
