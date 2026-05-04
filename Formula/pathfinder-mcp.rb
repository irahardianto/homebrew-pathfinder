class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.6.1"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.6.1/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "060b92525cbb2bc1c2fd9695d7403e1cb76fd1f0cdec5611b2a1a3b240503a39"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.6.1/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "b703c57e96dbb6099aedd93a8c807e20f941c10796a3e62e4871f7cd5ae1b753"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.6.1/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e03353e946479e5f08f05e176c654f7de3f33d0c1f3240811563ca75905ac05"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.6.1/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c9216edb6279e33b5e5a9f6bbc026b3c78d2bdf94172e1f3f6dd3f132199725a"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
