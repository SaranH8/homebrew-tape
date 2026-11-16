cask "tape" do
  version "1.3.2"
  sha256 "d04251492a2ecf85c1bc678757e2d735dbf9ae880adba32ed11d4c333217ff41"

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
