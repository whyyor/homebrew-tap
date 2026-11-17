# Written by scripts/homebrew-formula.sh in whyyor/tuimessenger for every release; changes made here are overwritten.
class Tuimessenger < Formula
  desc "WhatsApp, Telegram, Slack and Instagram in one terminal app"
  homepage "https://github.com/whyyor/tuimessenger"
  version "0.1.3"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.3/tuimessenger_v0.1.3_darwin_arm64.tar.gz"
      sha256 "c75c392739683784cd45499cdff24ae9fc0bca8103a34e3e7f83208ce1e65a94"
    end
    on_intel do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.3/tuimessenger_v0.1.3_darwin_amd64.tar.gz"
      sha256 "ffcbe0f32e6a83e0c22f510ef4d24391f69edf65f09c57302b3f8534df6f1e7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.3/tuimessenger_v0.1.3_linux_arm64.tar.gz"
      sha256 "a9a891051aa03d23f940471d603dcfbf1c921adc75d261b3d3d0050d9ca3b1c6"
    end
    on_intel do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.3/tuimessenger_v0.1.3_linux_amd64.tar.gz"
      sha256 "9a1fb5097eb24324d22fe9cef1a94eff0181876ce3d97b5bbbb1cdfeb0b925d6"
    end
  end

  def install
    bin.install "tuimessenger"
  end

  def caveats
    <<~EOS
      Start with:
        tuimessenger tui

      If you run the backend as a service, restart it after upgrading:
        tuimessenger service install

      Optional, for GIF and video previews and playing them in the terminal:
        brew install ffmpeg mpv
    EOS
  end

  test do
    assert_match "tuimessenger v#{version} ", shell_output("#{bin}/tuimessenger version")
  end
end
