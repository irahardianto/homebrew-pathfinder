class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.4.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.4.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "24a7f67daedec8a7f9c1e20f1d45a0f6a33bd4994157b66218b69526947d806d"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.4.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "a9b7618fc5e3af604ff1a401576cd0a211d0ed96dfc74f52768d5bca19bcfa71"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.4.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "628b017f39677cba51ca8168b5859a6508b8c0707c718a66e397c8f7c32b8f19"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.4.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "71f20aa58364db2610a7be19e53d9d2f05ad1dd669f5c453f89510d353ab415d"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
