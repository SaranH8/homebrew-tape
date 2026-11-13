cask "tape" do
  version "1.3.1"
  sha256 "677f7d74ae5dcef2f43a53f1576541c62dd8d04980b121a81420fa6fb305760f"

  url "https://github.com/SaranH8/homebrew-tape/releases/download/v#{version}/TAPE-v#{version}.dmg"
  name "TAPE"
  desc "Record meetings with system audio and mic as separate tracks, auto-split for Gemini transcription"
  homepage "https://cathunters.com/hub"

  app "TAPE.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/TAPE.app"]
  end
end
