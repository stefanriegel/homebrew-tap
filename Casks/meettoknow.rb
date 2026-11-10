cask "meettoknow" do
  version "2026.11.10"
  sha256 "fd289c5aaaa6a03848dd7f52eeca63b81ee9236672c155236be4ef4cfc448aa9"

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
