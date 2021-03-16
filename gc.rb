class Gc < Formula
  desc "A standalone CLI package to interface with the Genesys Cloud Platform API"
  url "https://github.com/MyPureCloud/platform-client-sdk-cli/archive/5.0.1.tar.gz"
  sha256 "a35669a45ecf760b60570be5917ae1b3e233b472b9922f02438ee2d9aa23cba6"
  license "MIT"

  depends_on "go" => :build

  def install
    # "bin" is a variable declared by homebrew
    cd "build/gc" do
      system "go", "build", "-o", bin/"gc", "."
    end
  end
end
