cask "nimbus" do
  version "0.0.18-alpha"
  sha256 "4f97edbee03059fe5a1e4747dc3dd10db237b2ebee29419aee36d0bec6ec13b0"

  url "https://github.com/syllogismos/nimbus/releases/download/v#{version}/Nimbus-#{version}-mac-arm64.dmg"
  name "Nimbus"
  desc "AI browser companion"
  homepage "https://usenimbus.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-[a-z0-9.-]+)?)$/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Nimbus.app"
end
