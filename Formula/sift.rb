class Sift < Formula
  desc "Provider-driven technical news radar CLI"
  homepage "https://github.com/harrisonwang/sift"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/sift/releases/download/v0.7.2/sift_v0.7.2_aarch64-apple-darwin.tar.gz"
      sha256 "a6aacf626df155887c1af4752ab43fc400e8a39368345937c96abb9ff53f5592"
    end

    on_intel do
      url "https://github.com/harrisonwang/sift/releases/download/v0.7.2/sift_v0.7.2_x86_64-apple-darwin.tar.gz"
      sha256 "62dd3c431cb09dc963981a9faa542eba06c1aa1866a92bfac7f54a9e2b0f2ab3"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/sift/releases/download/v0.7.2/sift_v0.7.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "83aae6f4fbed02f5784ec3a3bb1d471b5f9d4239e1e86662e220cfccbf24204e"
  end

  def install
    bin.install "sift"
    pkgshare.install "config.example.yaml"
  end

  def caveats
    <<~EOS
      创建默认配置：
        sift config init

      然后编辑 ~/.sift/config.yaml，并校验配置：
        sift config validate

      随包安装的配置示例也可在这里查看：
        #{pkgshare}/config.example.yaml
    EOS
  end

  test do
    output = shell_output("#{bin}/sift --version")
    assert_match "sift", output
  end
end
