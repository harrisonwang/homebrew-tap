cask "detectradar-bar" do
  version "0.1.1"
  sha256 "ff614a86479fe52101bc66457d8fbce106edefa95573bda23622bbcf010a0435"

  url "https://dl.detectradar.com/macos/releases/macos-v#{version}/DetectRadarBar-v#{version}-macos-universal.dmg"
  name "DetectRadarBar"
  desc "Menu bar companion for DetectRadar showing exit IP, network type, and IPv6 leak alerts"
  homepage "https://detectradar.com/macos/"

  depends_on macos: :ventura

  app "DetectRadarBar.app"

  zap trash: [
    "~/Library/Preferences/com.detectradar.bar.plist",
  ]
end
