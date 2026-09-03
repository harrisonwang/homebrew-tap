cask "clipx-gui" do
  version "0.5.0"
  name "clipx"
  desc "Cross-device clipboard synchronization"
  homepage "https://github.com/harrisonwang/clipx"
  license "MIT"

  on_arm do
    url "https://github.com/harrisonwang/clipx/releases/download/v0.5.0/clipx-gui_v0.5.0_aarch64-apple-darwin.dmg"
    sha256 "abf725d3c75ac996978d7409dd34118452c66d17fa010a3cf55c1bba03b37d7f"
  end

  on_intel do
    url "https://github.com/harrisonwang/clipx/releases/download/v0.5.0/clipx-gui_v0.5.0_x86_64-apple-darwin.dmg"
    sha256 "ce6b55f6cd5e4d1d158ac8d6bd8fc91dc64c384fa237350afd6f7187a6b5effa"
  end

  app "clipx.app"
end
