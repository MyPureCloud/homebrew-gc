class Gc < Formula
  desc "A standalone CLI package to interface with the Genesys Cloud Platform API"
  url "https://github.com/MyPureCloud/platform-client-sdk-cli/archive/20.0.1.tar.gz"
  sha256 "08db3d6f9aa931f6b6d40747d193b0fdbf7ccc4b4a71d428994bd9c7f7958a89"
  license "MIT"

  depends_on "go" => :build

  def install
    # "bin" is a variable declared by homebrew
    cd "build/gc" do
      system "go", "build", "-o", bin/"gc", "."
    end
  end
end
