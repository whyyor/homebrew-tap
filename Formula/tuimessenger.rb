# Written by scripts/homebrew-formula.sh in whyyor/tuimessenger for every release; changes made here are overwritten.
class Tuimessenger < Formula
  desc "WhatsApp, Telegram, Slack and Instagram in one terminal app"
  homepage "https://github.com/whyyor/tuimessenger"
  version "0.1.5"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.5/tuimessenger_v0.1.5_darwin_arm64.tar.gz"
      sha256 "f979ff1eb7b04278781f65269bbd7426070e25ed83ba4fceba7875b7d70c3458"
    end
    on_intel do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.5/tuimessenger_v0.1.5_darwin_amd64.tar.gz"
      sha256 "7df45dc6831004cf90dadace03a3c47dab59303b3d3222f3f8ef1b4e1ed992a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.5/tuimessenger_v0.1.5_linux_arm64.tar.gz"
      sha256 "ab2bb172c24978664c8803b68d51247174d9240dd8dc9c2f2780b13d6efeab04"
    end
    on_intel do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.5/tuimessenger_v0.1.5_linux_amd64.tar.gz"
      sha256 "64b11a0793a94b0b7ec910aab8c760ec080985add4b04395b5374029513bbadf"
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
