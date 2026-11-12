cask "tape" do
  version "1.2.1"
  sha256 "7e531de04eb422a1aea3744b887abb97a0592f797090aae0758befe06796e310"

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
