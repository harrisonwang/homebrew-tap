cask "clipx-gui" do
  version "0.7.0"
  name "clipx"
  desc "Cross-device clipboard synchronization"
  homepage "https://github.com/harrisonwang/clipx"

  on_arm do
    url "https://github.com/harrisonwang/clipx/releases/download/v0.7.0/clipx-gui_v0.7.0_aarch64-apple-darwin.dmg"
    sha256 "8eb498f17b80a2f598a617b98077ac0c2c24222b538a7e233e736bf3cfd60d81"
  end

  on_intel do
    url "https://github.com/harrisonwang/clipx/releases/download/v0.7.0/clipx-gui_v0.7.0_x86_64-apple-darwin.dmg"
    sha256 "a467f27434097f66a079f2ab4e07f10c93b590c1c8acc22774e59ce09913d1e0"
  end

  app "clipx.app"
end
