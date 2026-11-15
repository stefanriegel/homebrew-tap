cask "meettoknow" do
  version "2026.11.15"
  sha256 "e4061324540049ccc2e92178ae21334aa5f7bc92b5aff1a57867c7c4f5391ff6"

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
