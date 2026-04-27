class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.1.5"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.5/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "9560ead0f57ae4ea29161b37e54ad2686a027fd991fc779b4a776a80e7dad663"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.5/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "c33d3ffa152f0dcf18dfc42b23bd2d8a6b472a103d11b55a7f9420c5e8d880c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.5/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74e79b2d50b6ab30989971a20f005840b34ff5559278ffc3071244d33ce99bdd"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.5/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "23ca06ec7f751239ea8a7e54ad9759ecb8f61813a591a779ef29a6f6d95baa8c"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
