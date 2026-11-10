# Written by scripts/homebrew-formula.sh in whyyor/tuimessenger for every release; changes made here are overwritten.
class Tuimessenger < Formula
  desc "WhatsApp, Telegram, Slack and Instagram in one terminal app"
  homepage "https://github.com/whyyor/tuimessenger"
  version "0.1.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.0/tuimessenger_v0.1.0_darwin_arm64.tar.gz"
      sha256 "f4290a862e1d419a40fbeeea5f1236de7ca0b265aa7062ac38f9ba5372ccd3e5"
    end
    on_intel do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.0/tuimessenger_v0.1.0_darwin_amd64.tar.gz"
      sha256 "c60fd7a6917302d7231f860636726ba6fe5056c2d3a8139ea5d7e153b2c28537"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.0/tuimessenger_v0.1.0_linux_arm64.tar.gz"
      sha256 "b8d6fc1f56c39bc583622fd69e1f6b785e5386cce1f0290f996b9ca59234890e"
    end
    on_intel do
      url "https://github.com/whyyor/tuimessenger/releases/download/v0.1.0/tuimessenger_v0.1.0_linux_amd64.tar.gz"
      sha256 "c676bde0b8f404823b659a83e6eef6b067364bede967abee86a13841acdc886d"
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
