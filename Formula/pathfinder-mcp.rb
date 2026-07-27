class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.23.2"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.23.2/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "73d3e3f82fde7726716ab9aac104c0f78deca769bef094e2d39693bdadc3e4e6"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.23.2/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "d87db8879dadba4551612adcfa267ee675d19028ad8cce74ce5cd56a6acd8efd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.23.2/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "090bb2836c5c4ecd48a211efa2754df0ecd9034bbb672e5b890a4e249ba23dda"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.23.2/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f768cb27df9e5bd2e3eba9f7224aea9c31fb363e13526a9823f5176d9021f987"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("\#{bin}/pathfinder-mcp --version")
  end
end
