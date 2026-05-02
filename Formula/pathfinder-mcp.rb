class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.5.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.5.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "a3c551bdc2830194642d6657e7ca12c49446e36196d36091fee88a99e2992f5c"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.5.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "583d2bf3521c3b0811d3e115b1fafb65cefd1317bd4ff30116c8ae1e65b08505"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.5.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "981ce78cb3952a17d65ac53ebe50bdcccdff9399fb797c8a04da39947a7b25c7"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.5.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54816aba1485564c7a6711416f81bb047d238816d7f3724f5252dc7a48f7c851"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
