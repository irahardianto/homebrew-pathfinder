class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.1.7"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.7/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "26db293150e2efcf3e95d5540878c461254993ed2f63c0459f93e8cf3ecc2724"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.7/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "94171d8be44d965727dea60efcdd33635fd0f9986d3ddb61824799b6a0ce17fa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.7/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b70eb8f2d0a4434b6e84b7e2824bb701b7f17dd2130f6bff3e384e0b2d06829"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.7/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4951eee4ff583c9c65f8a87b6ea6900b7ee9310035de8fed7727cead394857b6"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
