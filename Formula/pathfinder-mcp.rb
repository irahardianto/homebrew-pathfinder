class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.3.0"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.3.0/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "dfa7381103892dc20e1bd1fee5dd5c2a1e3ab9e110700bf517c481494a458de1"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.3.0/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "35bd3a7dfd19cb5bad7ab73d8edb96b01e7e44b6b28a8608f454a43c2f81417c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.3.0/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c06947b4a5f0a71ac5d3dc0f9a2da7baf80265116046dc9cc0b837f70a7035c3"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.3.0/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b363f103b2c9848b2d820f40b1550565d992adb4d77a981bb566851c11b686b7"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
