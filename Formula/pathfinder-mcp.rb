class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.1.4"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.4/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "f73989a7c5f93c93e24ea67b9ea3f836b4198455ae8a420c02db4b448cdb123f"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.4/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "bd3616216683015c78e1a311bdc28bd12a7a1636c098fb99af6c8a645cc1f352"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.4/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9dccacc5c0c155f39c0fc18ef5f01d2f0be2297a7027dc8bb245e4eaf31f571b"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.4/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9aea07c557bf871899d946a0a7d8203af85b00132a659e368d521a6ad681dff"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
