cask "raskladushka" do
  version "1.3.0"
  sha256 "ddc1e0c7647f4022a43743adef9c4f6ff001a3d6c6d70d4f38ae47f0696b3e6a"

  url "https://github.com/itbali/raskladushka/releases/download/v#{version}/Raskladushka-#{version}.dmg"
  name "Raskladushka"
  name "Раскладушка"
  desc "Fixes text typed in the wrong keyboard layout and switches the layout"
  homepage "https://github.com/itbali/raskladushka"

  auto_updates true
  depends_on macos: :ventura

  app "Raskladushka.app"

  zap trash: [
    "~/Library/Containers/com.alexey.duzhev.raskladushka",
  ]
end
