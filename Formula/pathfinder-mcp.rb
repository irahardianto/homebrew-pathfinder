class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.2.1"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.2.1/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "fc840b26a246a801231d75eb68707501135c01e32509f1505859ee7d5d3074b0"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.2.1/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "d12c0fc651d171fedf42d09f8a45aafc0fedfd52aaa1f050a4e5bc3e4371befc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.2.1/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "022b08d8b7a34899b4fff8835076cabccb64ceab27fc9f5d518c9317ae9f6e89"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.2.1/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0752ebfba7982a3e32670a23acf01b7f47fb504173c51dfa5bfce5a570bfc297"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
