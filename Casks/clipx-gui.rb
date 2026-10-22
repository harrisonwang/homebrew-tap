cask "clipx-gui" do
  version "0.8.0"
  name "clipx"
  desc "Cross-device clipboard synchronization"
  homepage "https://github.com/harrisonwang/clipx"

  on_arm do
    url "https://github.com/harrisonwang/clipx/releases/download/v0.8.0/clipx-gui_v0.8.0_aarch64-apple-darwin.dmg"
    sha256 "6da0d26f7695421071e026e91f6c31e5a24a91c0931a04cb4ec50445c2df2b76"
  end

  on_intel do
    url "https://github.com/harrisonwang/clipx/releases/download/v0.8.0/clipx-gui_v0.8.0_x86_64-apple-darwin.dmg"
    sha256 "a1f73f28d8ccd2f9b74f6122c1077ad862ce4014eec77795230e9110b5d1415b"
  end

  app "clipx.app"
end
