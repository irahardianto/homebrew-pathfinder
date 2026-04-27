class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.1.6"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.6/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "1e7fe90995cca6eaa2944c41e8c9042e29b90c1e8e1583d779e4404df4e6988a"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.6/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "33a9972f75e04c30c6ad201861045dcf887f17302074cde809850af784c35008"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.6/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "72d5c4a6e5e53c11beee98eddf7c08c279a353c43e16a19b80f66f967f2ab461"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.1.6/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01b00faf16b4998347361fd29c103f0089874c9d7a1686a00dd4a354fbe32040"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
