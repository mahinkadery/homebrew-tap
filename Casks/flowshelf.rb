cask "flowshelf" do
  version "1.4.0"
  sha256 "980db655f2281cb85a2a8b61f42b48784c51b6842516f1b5f5c04b395a86ce2f"

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
