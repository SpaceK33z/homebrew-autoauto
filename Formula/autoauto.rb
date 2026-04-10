# typed: false
# frozen_string_literal: true

class Autoauto < Formula
  desc "TUI tool for autoresearch — autonomous experiment loops on any codebase"
  homepage "https://github.com/SpaceK33z/autoauto"
  license "MIT"
  version "1.5.0"

  on_macos do
    on_arm do
      url "https://github.com/SpaceK33z/autoauto/releases/download/v#{version}/autoauto-darwin-arm64"
      sha256 "6aad45ffb62d02a7ccc2b82b7ecc8977d1753a62f4c8266ab4eee292d001d873"
    end

    on_intel do
      url "https://github.com/SpaceK33z/autoauto/releases/download/v#{version}/autoauto-darwin-x64"
      sha256 "8c0204a1e6d9897cb706e1daf59ec0846483bc0e6ab06988227beca55c6c362d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SpaceK33z/autoauto/releases/download/v#{version}/autoauto-linux-arm64"
      sha256 "aea3a58629453ae70f151f5b3ffdee31b3aebefe64770572b1739c57f8babbd3"
    end

    on_intel do
      url "https://github.com/SpaceK33z/autoauto/releases/download/v#{version}/autoauto-linux-x64"
      sha256 "08362e7f85dad971fd0a718a17cdf1a98b06aab94a819d0c09d3ffcbc39b0b9b"
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
