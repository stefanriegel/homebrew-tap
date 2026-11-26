cask "meettoknow" do
  version "2026.11.26"
  sha256 "abad12de3975c3228144fc87bf1da4fa582e32db1275a1762228aef654761fa6"

  url "https://github.com/stefanriegel/meettoknow-releases/releases/download/v#{version}/MeetToKnow-#{version}.dmg"
  name "MeetToKnow"
  desc "Local-first AI meeting assistant"
  homepage "https://github.com/stefanriegel/meettoknow-releases"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "MeetToKnow.app"

  zap trash: [
    "~/Library/Caches/me.riegel.meettoknow",
    "~/Library/HTTPStorages/me.riegel.meettoknow",
    "~/Library/Preferences/me.riegel.meettoknow.plist",
    "~/Library/Saved Application State/me.riegel.meettoknow.savedState",
  ]
end
