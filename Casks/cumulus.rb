cask "cumulus" do
  version "0.10.1"
  sha256 "f23cffe610f095ef28acc7a14a61b5548755af452ecf5d38c2e2916e424ca271"

  # github.com/gillesdemey/Cumulus/ was verified as official when first introduced to the cask
  url "https://github.com/gillesdemey/Cumulus/releases/download/v#{version}/Cumulus-#{version}.dmg"
  appcast "https://github.com/gillesdemey/Cumulus/releases.atom"
  name "Cumulus"
  homepage "https://gillesdemey.github.io/Cumulus/"

  app "Cumulus.app"

  zap trash: [
    "~/Library/Application Support/Cumulus",
    "~/Library/Caches/Cumulus",
    "~/Library/Preferences/com.gillesdemey.cumulus.plist",
    "~/Library/Saved Application State/com.gillesdemey.cumulus.savedState",
  ]
end
