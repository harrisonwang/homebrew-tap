cask "zipover-gui" do
  version "1.3.6"
  name "Zipover"
  desc "Cross-device clipboard synchronization"
  homepage "https://github.com/harrisonwang/zipover-releases"

  on_arm do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.3.6/zipover-gui_v1.3.6_aarch64-apple-darwin.dmg"
    sha256 "539cb5d9d1c5481a408f451aeac3ef1e88deda661343e6054190a94831ae7dbb"
  end

  on_intel do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.3.6/zipover-gui_v1.3.6_x86_64-apple-darwin.dmg"
    sha256 "aae6de4103fea01401cb3b1aea5cfe43e5364037a9b41b5797387c6f96b86435"
  end

  app "Zipover.app"
end
