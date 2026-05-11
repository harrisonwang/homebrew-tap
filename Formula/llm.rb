class Llm < Formula
  desc "Minimal OpenAI-compatible LLM CLI"
  homepage "https://github.com/harrisonwang/llm"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/llm/releases/download/v0.2.0/llm_v0.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "0863f835a956565fe1a35b4a96fe4792725a4d7875619cac04f6de274b66138c"
    end

    on_intel do
      url "https://github.com/harrisonwang/llm/releases/download/v0.2.0/llm_v0.2.0_x86_64-apple-darwin.tar.gz"
      sha256 "a64c69f71fcbffbe56b24bc9fcc0228b027c1fba18712ab24ea8cd95baf631c8"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/llm/releases/download/v0.2.0/llm_v0.2.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e3a85320400d959e46bc951b7af90b815007894063f2daee1e8e1a8d5a97bc39"
  end

  def install
    bin.install "llm"
  end

  test do
    output = shell_output("#{bin}/llm --version")
    assert_match "llm", output
  end
end
