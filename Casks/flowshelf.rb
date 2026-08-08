cask "flowshelf" do
  version "1.6.2"
  sha256 "2d852e9c34abdd1be0e5e5ad29c75e8fdb84be5b94baeb20c58220c5f959251f"

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
