cask "zipover-gui" do
  version "1.3.4"
  name "Zipover"
  desc "Cross-device clipboard synchronization"
  homepage "https://github.com/harrisonwang/zipover-releases"

  on_arm do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.3.4/zipover-gui_v1.3.4_aarch64-apple-darwin.dmg"
    sha256 "1fd1dcda9a5dee55e69aaf823a610abfd2643c5648517cb35492495830a5811f"
  end

  on_intel do
    url "https://github.com/harrisonwang/zipover-releases/releases/download/v1.3.4/zipover-gui_v1.3.4_x86_64-apple-darwin.dmg"
    sha256 "3291d38fd9c04775bf344dc183ab6134e0b7b93169b44222c72a495affc506c3"
  end

  app "Zipover.app"
end
