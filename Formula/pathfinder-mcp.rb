class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.1.2"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/pathfinder-mcp-v0.1.2/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "6e066519362adfa7ba2cc7259cc9191a48902981c1b57df2223d3eee0315642c"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/pathfinder-mcp-v0.1.2/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "06c8f1667baca149441e3d3784dd88cb2575873bceb195eb72e3a75cf3f67095"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/pathfinder-mcp-v0.1.2/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b81906b37028013b3335d4eb8279fd2197986b78ce3e7cbe7b0efda6790e7938"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/pathfinder-mcp-v0.1.2/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d7511bdd179ffb9a9751a12691270c38c14f260acedec5fe8e1da32bc0caeb8"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
