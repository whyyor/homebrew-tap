# Written by scripts/homebrew-formula.sh in whyyor/tuimessenger for every release; changes made here are overwritten.
class Tuimessenger < Formula
  desc "WhatsApp, Telegram, Slack and Instagram in one terminal app"
  homepage "https://github.com/whyyor/tuimessenger"
  version "0.1.4"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.4/tuimessenger_v0.1.4_darwin_arm64.tar.gz"
      sha256 "28cac9f09cc558f5a2ba8c6d979b88143cf47363c327f58746ad695e08558a83"
    end
    on_intel do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.4/tuimessenger_v0.1.4_darwin_amd64.tar.gz"
      sha256 "60fe53a79809f22da7009eab60553a35ccf856dd09bc9903eb3dc00e70c44586"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.4/tuimessenger_v0.1.4_linux_arm64.tar.gz"
      sha256 "a5528483a1b37e2467a00161655245f62d4478ee26b78393232d478cae94b785"
    end
    on_intel do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.4/tuimessenger_v0.1.4_linux_amd64.tar.gz"
      sha256 "7216e79f193960cf0cfec486e2a3c84f77e624ba63ee9236d8ad236547ffa16b"
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
