# typed: false
# frozen_string_literal: true

class Autoauto < Formula
  desc "TUI tool for autoresearch — autonomous experiment loops on any codebase"
  homepage "https://github.com/SpaceK33z/autoauto"
  license "MIT"
  version "1.6.0"

  on_macos do
    on_arm do
      url "https://github.com/SpaceK33z/autoauto/releases/download/v#{version}/autoauto-darwin-arm64"
      sha256 "67d74066a8ed287c9be515906bff3f367afa8cd8a4e34cbcc8b50c6f306cb414"
    end

    on_intel do
      url "https://github.com/SpaceK33z/autoauto/releases/download/v#{version}/autoauto-darwin-x64"
      sha256 "425423291b5ef28bb0dc7362b28384d3e55f82cf18c0e5e53f5d84e096fad801"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SpaceK33z/autoauto/releases/download/v#{version}/autoauto-linux-arm64"
      sha256 "6b67feb878b106608bc47ebba5d97e2209f0a50fd16e9a81ae2440253276e2f0"
    end

    on_intel do
      url "https://github.com/SpaceK33z/autoauto/releases/download/v#{version}/autoauto-linux-x64"
      sha256 "36066526ecdcf3e940ed2e038455c81588b40d155c78091697c46d9bf6324c50"
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
