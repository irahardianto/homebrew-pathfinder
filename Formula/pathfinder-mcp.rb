class PathfinderMcp < Formula
  desc "Pathfinder MCP Server"
  homepage "https://github.com/irahardianto/pathfinder"
  version "0.2.2"

  on_macos do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.2.2/pathfinder-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "d64cc8d48201a461d907b756e325c45f8bc3df25df9281589fbfe524f5f7682e"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.2.2/pathfinder-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "479695cecae28af107c34f9d01eadb8eb93ab945569c98f008ae0aeb6bd74cc1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.2.2/pathfinder-mcp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb1dfbcb4c895591812203e4a72d71ca82c1f2e700c9484846279bf55098d023"
    end
    on_arm do
      url "https://github.com/irahardianto/pathfinder/releases/download/v0.2.2/pathfinder-mcp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd5212278d148b52465200e8873bc68803dafc866818a22f123d52005303dea4"
    end
  end

  def install
    bin.install "pathfinder-mcp"
  end

  test do
    assert_match version, shell_output("#{bin}/pathfinder-mcp --version")
  end
end
