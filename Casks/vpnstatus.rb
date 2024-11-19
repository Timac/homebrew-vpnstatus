cask "vpnstatus" do
  version "3.1"
  sha256 "c8e484b1d911e8aaab3ca5d6c527814d61707d47e9b4c0ede98bcd156ff07ba8"

  url "https://github.com/Timac/VPNStatus/releases/download/#{version}/VPNStatus.zip"
  name "VPNStatus"
  desc "Replacement for builtin VPN Status"
  homepage "https://github.com/Timac/VPNStatus"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: ">= :monterey"

  app "VPNStatus.app"

  zap trash: "~/Library/Preferences/org.timac.VPNStatus.plist"
end
