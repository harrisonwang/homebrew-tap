class Llm < Formula
  desc "Minimal OpenAI-compatible LLM CLI"
  homepage "https://github.com/harrisonwang/llm"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/llm/releases/download/v0.3.0/llm_v0.3.0_aarch64-apple-darwin.tar.gz"
      sha256 "5a088eabb61ddb851dbb4d9d854da68c7135e2c859e05a65ecb7751e49f153a3"
    end

    on_intel do
      url "https://github.com/harrisonwang/llm/releases/download/v0.3.0/llm_v0.3.0_x86_64-apple-darwin.tar.gz"
      sha256 "425a83f9b797bcbfdbe0a78248eede91eeff3611d40c3a133ab436c34dccc6d5"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/llm/releases/download/v0.3.0/llm_v0.3.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "75f9b4726bc4d9ce94b30d0664d33ddaedacb08d31ba7ea94409e7623ebf00b5"
  end

  def install
    bin.install "llm"
  end

  test do
    output = shell_output("#{bin}/llm --version")
    assert_match "llm", output
  end
end
