class Sift < Formula
  desc "Provider-driven technical news radar CLI"
  homepage "https://github.com/harrisonwang/sift"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrisonwang/sift/releases/download/v0.7.0/sift_v0.7.0_aarch64-apple-darwin.tar.gz"
      sha256 "8026d60965559d54ecdb646d22da78b60287098396759ba5584cd9948a082b16"
    end

    on_intel do
      url "https://github.com/harrisonwang/sift/releases/download/v0.7.0/sift_v0.7.0_x86_64-apple-darwin.tar.gz"
      sha256 "17c28b09eef07131846b7bc3689acd78f7fa5b6956ad76cedd4ad78be5a5d202"
    end
  end

  on_linux do
    url "https://github.com/harrisonwang/sift/releases/download/v0.7.0/sift_v0.7.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "07d61ac9935ed0f9c99086ccc3f14e7e5b18cb12961f89464d48478a98b8a22e"
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
