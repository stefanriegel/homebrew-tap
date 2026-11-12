cask "meettoknow" do
  version "2026.11.12"
  sha256 "86ac42d5261fc69bf71b01f1fbd871728c5b455fa6fde21f4d51a7e9a9dc8451"

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
