class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.3.1"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.3.1/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "4ea6f320122d1fa66aa013bb598987ccf342d59750c7be3971975e8312b9b3fa"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.3.1/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "653fc4c4cb1b26fde1720a0e353ea188c86ed3e79bad7f023e098b91ea24a35a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.3.1/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1af11a9e7e2430c63f70ef89b591c3ccb7b7ab13ace1d229926a4ebf5a84fd19"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.3.1/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dbbd4c2796b3699b2c2acc8ed27c60b1aa50a2bc912072cb47db26d2c2cf5613"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
