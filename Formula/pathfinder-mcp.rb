class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.23.3"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.23.3/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "5bef38855b2b77064eccd7c1dbee559d8ee5b46f2880d8d22a3b90ffd9bfdae3"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.23.3/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "0cc921e7cda68c2c6c62aff7e256f597a3d04970dd0d586645521a947faefd3d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.23.3/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "292832d103ed543999a912b7ae2914774a84701ff1f89cf1726a95a8a3810a60"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.23.3/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f8d59d86c3e4d3c82f1a9fbed22e396cfe05f195f7971ff4902ec2dcf419d80b"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
