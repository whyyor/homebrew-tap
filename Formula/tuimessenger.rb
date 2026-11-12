# Written by scripts/homebrew-formula.sh in whyyor/tuimessenger for every release; changes made here are overwritten.
class Tuimessenger < Formula
  desc "WhatsApp, Telegram, Slack and Instagram in one terminal app"
  homepage "https://github.com/whyyor/tuimessenger"
  version "0.1.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.2/tuimessenger_v0.1.2_darwin_arm64.tar.gz"
      sha256 "5d9403febdbf6f1918e207207019c8031638e9589d6d76ea42378c35b193f224"
    end
    on_intel do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.2/tuimessenger_v0.1.2_darwin_amd64.tar.gz"
      sha256 "4219c23a3fdd477926b80270c713cf24a9b5f9240b8710dd75db4dd81489326d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.2/tuimessenger_v0.1.2_linux_arm64.tar.gz"
      sha256 "7664ce2a9fa67c78d95d5e57cb35a5ff4953099dbdbf04d0a9b8acf91a48316c"
    end
    on_intel do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.2/tuimessenger_v0.1.2_linux_amd64.tar.gz"
      sha256 "30157aa7849c536ee23be67f821ad76d371bccd9adb1d56cc29ccd8c2391f565"
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
