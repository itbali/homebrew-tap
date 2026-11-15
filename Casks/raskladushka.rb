cask "raskladushka" do
  version "1.2.0"
  sha256 "9b16dfab1ac17aef79801775e92f607fff8ccc55361db819af140783de5e8da0"

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
