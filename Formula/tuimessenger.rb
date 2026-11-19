# Written by scripts/homebrew-formula.sh in whyyor/tuimessenger for every release; changes made here are overwritten.
class Tuimessenger < Formula
  desc "WhatsApp, Telegram, Slack and Instagram in one terminal app"
  homepage "https://github.com/whyyor/tuimessenger"
  version "0.1.6"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.6/tuimessenger_v0.1.6_darwin_arm64.tar.gz"
      sha256 "fb7dcbf5067f951f086114b926c8b49136b2b08b121560cd348c541408ed518a"
    end
    on_intel do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.6/tuimessenger_v0.1.6_darwin_amd64.tar.gz"
      sha256 "a552c349bf49fe41c1f88c57528cfa1c9cc7acce043d22a8158c3a69ed102e2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.6/tuimessenger_v0.1.6_linux_arm64.tar.gz"
      sha256 "3d46af4b06cd4af1bed5d0db9655947d2f05f512658f6fec7e703c4d0585240a"
    end
    on_intel do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.6/tuimessenger_v0.1.6_linux_amd64.tar.gz"
      sha256 "82a5d389c9452154ba386cf393f59ec7252f0d532990cc48cf273392f9753d8a"
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
