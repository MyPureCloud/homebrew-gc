class PlatformClientSdkCli < Formula
  desc "A standalone CLI package to interface with the Genesys Cloud Platform API"
  url "https://github.com/MyPureCloud/platform-client-sdk-cli/archive/v1.0.2.tar.gz"
  sha256 "5cbda42543dc4f8b9c98750cf6ea04e7ad2bc49d9a28604dff7f056e98667085"
  license "MIT"

  depends_on "go" => :build

  def install
    # "bin" is a variable declared by homebrew
    cd "src" do
      system "go", "build", "-o", bin/"gc", "."
    end
  end
end
