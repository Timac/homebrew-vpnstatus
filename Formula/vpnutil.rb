class Vpnutil < Formula
  desc "Command-line tool that can start and stop a VPN service from the Terminal"
  homepage "https://github.com/Timac/VPNStatus"
  url "https://github.com/Timac/VPNStatus/releases/download/3.1/vpnutil.zip"
  sha256 "6eb981aebdc6e3e0209fae5a7db515a8ab7ce4d62395f685d5559edc23df4267"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "vpnutil"
  end

  test do
    # Validate install
    system bin/"vpnutil", "list"
  end
end
