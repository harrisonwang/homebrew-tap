cask "zipover-gui" do
  version "1.3.2"
  name "Zipover"
  desc "Cross-device clipboard synchronization"
  homepage "https://github.com/harrisonwang/zipover-releases"

  on_arm do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.3.2/zipover-gui_v1.3.2_aarch64-apple-darwin.dmg"
    sha256 "e9cec8ba6c0f5d9cc58bc014cce75a063d551828d564ffc77ac37fec8ce6e345"
  end

  on_intel do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.3.2/zipover-gui_v1.3.2_x86_64-apple-darwin.dmg"
    sha256 "d483420944c0c06cc232d03a4189ecb11f0bd5211a6e7bf28d9f74c3d29db1c5"
  end

  app "Zipover.app"
end
