class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.6.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.6.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "5cb8292b76815e576b862286b8b10946906d01d93ee12230119ba6366a86eba1"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.6.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "773bd4c784713189a990dc9470e080f3a2d7f8ec2bfda9d1798dcec7f1941bc4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.6.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "430db3a60ac9b59bb4ff2d5cd1f47e6c48dd2c654cf85e0a46f3a76bd5ad0590"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.6.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "58efe6ac66d9ea021756d57d31b9eb23e18be2c71418cfce6adaf96906227c73"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
