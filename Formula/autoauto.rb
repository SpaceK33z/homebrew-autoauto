# typed: false
# frozen_string_literal: true

class Autoauto < Formula
  desc "TUI tool for autoresearch — autonomous experiment loops on any codebase"
  homepage "https://github.com/SpaceK33z/autoauto"
  license "MIT"
  version "1.2.0"

  on_macos do
    on_arm do
      url "https://github.com/SpaceK33z/autoauto/releases/download/v#{version}/autoauto-darwin-arm64"
      sha256 "58ab7c0fe1f4fddbad5677c89e8a314683950e883ac64e9cc3df9c79d7b7107c"
    end

    on_intel do
      url "https://github.com/SpaceK33z/autoauto/releases/download/v#{version}/autoauto-darwin-x64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SpaceK33z/autoauto/releases/download/v#{version}/autoauto-linux-arm64"
      sha256 "9763665829f31900a3b3da704e6801de0a897fe0c7c5bec2d0744a90d0b3c51f"
    end

    on_intel do
      url "https://github.com/SpaceK33z/autoauto/releases/download/v#{version}/autoauto-linux-x64"
      sha256 "4a0cd303da890011f1104a96c7b5daaf87256bd7e2d4aa2d55fcceb5f43c448e"
    end
  end

  def install
    binary = stable.url.split("/").last
    bin.install binary => "autoauto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/autoauto --version", 2)
  end
end
