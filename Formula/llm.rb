class Llm < Formula
  desc "Minimal OpenAI-compatible LLM CLI"
  homepage "https://github.com/harrisonwang/llm"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/llm/releases/download/v0.1.0/llm_v0.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "97df21efe472671bdf2557105ff8a7a702fdca5d5994a8d127b16d5c2f27fd67"
    end

    on_intel do
      url "https://github.com/harrisonwang/llm/releases/download/v0.1.0/llm_v0.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "072b1e02a6410251ca2d657306da2eccc90e93f8eca0283a1e79638542faa432"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/llm/releases/download/v0.1.0/llm_v0.1.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a1fa66c2adbdf8a10a000903e137dadedf42d1046488d20cf74b392a30fc4b88"
  end

  def install
    bin.install "llm"
  end

  test do
    output = shell_output("#{bin}/llm --version")
    assert_match "llm", output
  end
end
