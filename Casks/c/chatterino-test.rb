cask "chatterino-test" do
  version "2.5.4-beta.2"
  sha256 "5411315e175c71671862ed1a4d21f5b47d8da1ee9ef121fc23d47895a9413e40"

  url "https://i.pajlada.se/02-chatterino-2.5.4-beta.1.dmg",
      verified: "i.pajlada.se/"
  name "Chatterino test"
  desc "Chat client for https://twitch.tv test"
  homepage "https://chatterino.com/"

  # livecheck do
  #   url "https://notitia.chatterino.com/version/chatterino/macos/stable"
  #   strategy :json do |json|
  #     json["version"]
  #   end
  # end

  # disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "chatterino.app"

  zap trash: "~/Library/Application Support/chatterino"
end
