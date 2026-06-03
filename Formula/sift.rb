class Sift < Formula
  desc "Provider-driven technical news radar CLI"
  homepage "https://github.com/harrisonwang/sift"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/sift/releases/download/v0.2.0/sift_v0.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "961dffb83956f20685b9672d61c5775ce164a6401babba76e36bbf2e03a153fd"
    end

    on_intel do
      url "https://github.com/harrisonwang/sift/releases/download/v0.2.0/sift_v0.2.0_x86_64-apple-darwin.tar.gz"
      sha256 "8ec11736615f279063e7c1c6a95d6db9c30527f8872351ec81e1b316bdee0e04"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/sift/releases/download/v0.2.0/sift_v0.2.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "324841d3eb2db94a26e5b0afa3d07e534fac33b3b8dff7101d30caaa8c751311"
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
