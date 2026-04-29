class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.1.9"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.9/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "84fa8032960d3468ddbbb72efd28cf7eb79d93ce46896b8952c30f486b6a7274"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.9/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "b8e514079a268b9a943c65df45f9cbc50318fc91f83307eba1d82d5b046d4d45"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.9/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ede829148d45156efc6bd944a2ef08d90c63f6c4fd35c725955dfeb435c473f9"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.9/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "367441aa67c23bc31a14c0e72bdd077f5315bc430183573aa38d6630b2716dd8"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
