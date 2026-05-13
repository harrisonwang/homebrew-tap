class Commit < Formula
  desc "Generate, validate, and execute high-quality commits from Git staged diff"
  homepage "https://github.com/harrisonwang/commit"
  version "1.0.0"
  license "MIT"

  depends_on "harrisonwang/homebrew-tap/llm"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/commit/releases/download/v1.0.0/commit_v1.0.0_aarch64-apple-darwin.tar.gz"
      sha256 "eb719d57f73e284b01993808d6664623b8688b06cafcbd1b398a96955743dacf"
    end

    on_intel do
      url "https://github.com/harrisonwang/commit/releases/download/v1.0.0/commit_v1.0.0_x86_64-apple-darwin.tar.gz"
      sha256 "afc0728350c5b0794c967760a754ee8348a8992f86e84e09910e0d861d9c7ca5"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/commit/releases/download/v1.0.0/commit_v1.0.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "65776b0ecd24311b8b4957aee088546d298335d6e298e27c59ef0f1b1383091b"
  end

  def install
    bin.install "commit"
  end

  test do
    output = shell_output("#{bin}/commit --version")
    assert_match "commit", output
  end
end
