class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.6.2"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.6.2/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "0dd1aa3fc61160cb2cccb7a5895a3250b384f9b2ed70078334d5cda3fbc9194a"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.6.2/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "b4f00cb2781ad9423719bd7e01236c29e26e1138776b7072d8076a6be4af61c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.6.2/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cda8e3bb202d1add8cf90b2eee69eaf93612caaceb0f408d216fb229862df07d"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.6.2/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e512ff4ef1a473f134e2a8e9330be5b683ab8d14b7da61ef02b86467dc2a321e"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
