# Written by scripts/homebrew-formula.sh in whyyor/tuimessenger for every release; changes made here are overwritten.
class Tuimessenger < Formula
  desc "WhatsApp, Telegram, Slack and Instagram in one terminal app"
  homepage "https://github.com/whyyor/tuimessenger"
  version "0.1.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.1/tuimessenger_v0.1.1_darwin_arm64.tar.gz"
      sha256 "74f77e23ca0674d6d09472dc50c4d35acbb7d75905ec560f8db94e525fef613a"
    end
    on_intel do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.1/tuimessenger_v0.1.1_darwin_amd64.tar.gz"
      sha256 "ae8e0440e9d4aa9bc22a19a5d05f2783dae2c7c21cefacc518959304324d423d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.1/tuimessenger_v0.1.1_linux_arm64.tar.gz"
      sha256 "013de9695eba987228e85e53dfe729e4c6587122eb44ad111f4d374fd9820a68"
    end
    on_intel do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.1/tuimessenger_v0.1.1_linux_amd64.tar.gz"
      sha256 "2d7a5cc39a7a23107981b196a02c583f1a45e207b858af451023085ccb674a06"
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
    EOS
  end

  test do
    assert_match "tuimessenger v#{version} ", shell_output("#{bin}/tuimessenger version")
  end
end
