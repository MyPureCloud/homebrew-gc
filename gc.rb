class Gc < Formula
  desc "A standalone CLI package to interface with the Genesys Cloud Platform API"
  url "https://github.com/MyPureCloud/platform-client-sdk-cli/archive/137.1.0.tar.gz"
  sha256 "ab90119046b88c2e4ddca5e5b7efee7ea75f684f1b410e31c770400f89284e92"
  license "MIT"

  depends_on "go" => :build

  def install
    # "bin" is a variable declared by homebrew
    cd "build/gc" do
      system "go", "build", "-o", bin/"gc", "."
    end
  end
end
