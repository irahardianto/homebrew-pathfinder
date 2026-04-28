class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.1.8"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.8/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "88850d27ae39d88f8b80f338851ac517115813ef53fbea92c747fae2ba5b83ed"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.8/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "a2081e1e24ed2214ba9493e78f67506fe081464820ffbe159978bfe85dc51fdc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.8/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "176adf00512099e03ef9e40e19c1d04d7ff45ba807cc05017699f3b5cdc2084b"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.8/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed6bcca8e4ad70bd03eee43f3223132e7452485712932a135b0b92e32e68c574"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
