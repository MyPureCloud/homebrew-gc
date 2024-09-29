class Gc < Formula
  desc "A standalone CLI package to interface with the Genesys Cloud Platform API"
  url "https://github.com/MyPureCloud/platform-client-sdk-cli/archive/112.0.0.tar.gz"
  sha256 "7c219c9e58d77f4398f9c8e310fb5dfddbf3baeb77d0bc8ebeb6f110d6f3c66d"
  license "MIT"

  depends_on "go" => :build

  def install
    # "bin" is a variable declared by homebrew
    cd "build/gc" do
      system "go", "build", "-o", bin/"gc", "."
    end
  end
end
