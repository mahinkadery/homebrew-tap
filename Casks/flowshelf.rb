cask "flowshelf" do
  version "1.7.0"
  sha256 "f3cbe581fe13cc115717e30b3827ae7e8c46c742539486a86bff80283ab554fd"

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
