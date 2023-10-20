class Obs < Formula
  desc "obs_websocket allows dart-based connections to the OBS (Open Broadcaster Software) plugin obs-websocket"
  homepage "https://github.com/faithoflifedev/easy_obs_websocket"
  url "https://api.github.com/repos/faithoflifedev/obs_websocket/tarball/v5.1.0+4"
  sha256 "19d42b0048b9123a738b4425f150df1043691d0c3841444db5ed4e36e1264647"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/obs.dart", "-o", "obs"
    bin.install "obs"
  end
  
  test do
    assert_match "obs_websocket v5.1.0+4", shell_output("bin/obs version")
  end
end