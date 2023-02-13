class Obs < Formula
  desc "obs_websocket allows dart-based connections to the OBS (Open Broadcaster Software) plugin obs-websocket"
  homepage "https://github.com/faithoflifedev/easy_obs_websocket"
  url "https://api.github.com/repos/faithoflifedev/obs_websocket/tarball/v5.0.0+15"
  sha256 "f11d7b524b13e20eb8bf0cdb219ecc1dd95677f2e09126108917ec18e94514a3"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/obs.dart", "-o", "obs"
    bin.install "obs"
  end
  
  test do
    assert_match "obs_websocket v5.0.0+15", shell_output("bin/obs version")
  end
end