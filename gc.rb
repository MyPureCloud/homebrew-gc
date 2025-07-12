class Gc < Formula
  desc "A standalone CLI package to interface with the Genesys Cloud Platform API"
  url "https://github.com/MyPureCloud/platform-client-sdk-cli/archive/134.0.0.tar.gz"
  sha256 "52898e91ffaa0aa6be0c0adab0b3bcd0f1eed04a00bd1b4602d9ffc1b61e105d"
  license "MIT"

  depends_on "go" => :build

  def install
    # "bin" is a variable declared by homebrew
    cd "build/gc" do
      system "go", "build", "-o", bin/"gc", "."
    end
  end
end
