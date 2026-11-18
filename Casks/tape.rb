cask "tape" do
  version "1.5.0"
  sha256 "4e898a0ca0d4cb2f6b533eb025c70185827748ef54f8f10b1d45bd6629a1d084"

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
