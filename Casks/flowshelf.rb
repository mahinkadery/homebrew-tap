cask "flowshelf" do
  version "1.6.1"
  sha256 "e51f9bc153eb1bc0ca3dbffdaa0ca53296ec128534debdf69eb3e9f8829b6250"

  url "https://github.com/mahinkadery/FlowShelf/releases/download/v#{version}/FlowShelf-#{version}.dmg"
  name "FlowShelf"
  desc "Menu-bar shelf, clipboard history, screenshot studio and window tools"
  homepage "https://flowshelf.app/"

  livecheck do
    url "https://raw.githubusercontent.com/mahinkadery/FlowShelf/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "FlowShelf.app"

  zap trash: [
    "~/Library/Application Support/FlowShelf",
    "~/Library/Caches/com.flowshelf.app",
    "~/Library/HTTPStorages/com.flowshelf.app",
    "~/Library/Preferences/com.flowshelf.app.plist",
  ]
end
