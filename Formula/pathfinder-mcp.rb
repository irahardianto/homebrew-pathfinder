class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.2.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.2.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "f37c519a88e9edc9188c16240cb0942401bae21b0775e003e6d69431946f40c3"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.2.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "0ee66ede19ed3bebe450f6dd46dbe3defb0701f425c5df7f2051657094d4bede"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.2.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "18dfdac89721e13aefb79659be1f2dd6a990bb72de211442f3f0bb53ef4ebff9"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.2.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac0107739ea68df755ba0f0423828efb30adff7c29219c6db4fba9a671c927e8"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
