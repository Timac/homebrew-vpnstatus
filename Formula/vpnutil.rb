class Vpnutil < Formula
  desc "Command-line tool that can start and stop a VPN service from the Terminal"
  homepage "https://github.com/Timac/VPNStatus"
  url "https://github.com/Timac/VPNStatus/releases/download/3.0/vpnutil.zip"
  sha256 "c8477df422660d917f6928d50618986b60376768106afbaca8859cb655c757f6"
  license "MIT"
  depends_on :macos

  def install
    bin.install "vpnutil"
  end

  test do
    # Validate install
    system "#{bin}/vpnutil", "list"
  end
end
