cask "zipover-gui" do
  version "1.3.5"
  name "Zipover"
  desc "Cross-device clipboard synchronization"
  homepage "https://github.com/harrisonwang/zipover-releases"

  on_arm do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.3.5/zipover-gui_v1.3.5_aarch64-apple-darwin.dmg"
    sha256 "654d6be1a5f607c633fad4dc9a4fb3345246fb2f5f7b26a49bceef718263a6df"
  end

  on_intel do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.3.5/zipover-gui_v1.3.5_x86_64-apple-darwin.dmg"
    sha256 "72be572af3b7db05568e077e0a85de662fcd3d4fa9b5ae6c94e6ec07a14dde1d"
  end

  app "Zipover.app"
end
