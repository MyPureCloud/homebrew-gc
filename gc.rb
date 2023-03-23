class Gc < Formula
  desc "A standalone CLI package to interface with the Genesys Cloud Platform API"
  url "https://github.com/MyPureCloud/platform-client-sdk-cli/archive/61.0.1.tar.gz"
  sha256 "7f9d3af06f11f8705affdb3bc8fc686dfa8d1dc7b9e6d346a336433b57a1ffbe"
  license "MIT"

  depends_on "go" => :build

  def install
    # "bin" is a variable declared by homebrew
    cd "build/gc" do
      system "go", "build", "-o", bin/"gc", "."
    end
  end
end
