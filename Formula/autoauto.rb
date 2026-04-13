# typed: false
# frozen_string_literal: true

class Autoauto < Formula
  desc "TUI tool for autoresearch — autonomous experiment loops on any codebase"
  homepage "https://github.com/SpaceK33z/autoauto"
  license "MIT"
  version "1.7.0"

  on_macos do
    on_arm do
      url "https://github.com/SpaceK33z/autoauto/releases/download/v#{version}/autoauto-darwin-arm64"
      sha256 "c96d93cccb0e1b3deecde54464e06ad5e97ba99ec357e0e4fec0336f5baba532"
    end

    on_intel do
      url "https://github.com/SpaceK33z/autoauto/releases/download/v#{version}/autoauto-darwin-x64"
      sha256 "72f5b4b7e2ad6089247ba5b5e9f7dcf6fc2e1d9eb1d6b3a1e85eea8d53214ed4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SpaceK33z/autoauto/releases/download/v#{version}/autoauto-linux-arm64"
      sha256 "c70207c0985612bd11643a4168a0bcfc0e8f074390dde4375df86ebc0717013f"
    end

    on_intel do
      url "https://github.com/SpaceK33z/autoauto/releases/download/v#{version}/autoauto-linux-x64"
      sha256 "f6fbd0a9810af2077997c1b91173cb0a458490c38543e2a68b11e669e916066c"
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
