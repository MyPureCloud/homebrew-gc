class Gc < Formula
  desc "A standalone CLI package to interface with the Genesys Cloud Platform API"
  url "https://github.com/MyPureCloud/platform-client-sdk-cli/archive/156.0.0.tar.gz"
  sha256 "5f5c98916b0579c6a0eef2311853da48b7471a1c859c310e9925960440c3d61e"
  license "MIT"

  depends_on "go" => :build

  def install
    # "bin" is a variable declared by homebrew
    cd "build/gc" do
      system "go", "build", "-o", bin/"gc", "."
    end
  end
end
