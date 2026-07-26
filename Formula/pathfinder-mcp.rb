class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.23.1"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.23.1/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "89dab3c6e065b78b563631f3a5c76d19a2a3fac5f72e9f86d3cb9524c6307068"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.23.1/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "2628726dbf336507f26056dad7b0dbc95f0e18787c5e8311beceeb61a5b20eb9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.23.1/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8369451286240066f679ecefed75edfa1f196211a568dd68be666c8a9e4dcd27"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.23.1/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8cf7894a403425b33d8d1c43b9ed1c132736f1c5001fbdcd46d1b015fbdba1e2"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
