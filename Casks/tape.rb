cask "tape" do
  version "1.3.0"
  sha256 "bab9f5eb4754bedd649eb93a6b4e5de0f039dfd00e068ce4fdff3b2cdb2b4225"

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
