cask "clipx-gui" do
  version "0.6.0"
  name "clipx"
  desc "Cross-device clipboard synchronization"
  homepage "https://github.com/harrisonwang/clipx"
  license "MIT"

  on_arm do
    url "https://github.com/harrisonwang/clipx/releases/download/v0.6.0/clipx-gui_v0.6.0_aarch64-apple-darwin.dmg"
    sha256 "53a5bb10ed2556a235616f221de82af55c092cbd58b2d5d5103624308756b18c"
  end

  on_intel do
    url "https://github.com/harrisonwang/clipx/releases/download/v0.6.0/clipx-gui_v0.6.0_x86_64-apple-darwin.dmg"
    sha256 "6ee1dc9e0e4772dddbfb341df8e583309cbd224be0ae92a2164be1cefca9a4b7"
  end

  app "clipx.app"
end
