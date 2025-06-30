class Aja < Formula
  desc "DeployAja CLI tool"
  homepage "https://github.com/battar-alaziz/deployaja-cli"
  version "v1.0.0"

  if OS.mac?
    url "https://github.com/battar-alaziz/homebrew-binary/releases/download/v1.0.0/aja-macos"
    sha256 "e9ace69ee1ef5a87bda0924ab09e4728d2b3ea0ee6b4a36d98b398a25c5d9da5"
  elsif OS.linux?
    url "https://github.com/battar-alaziz/homebrew-binary/releases/download/v1.0.0/aja-linux"
    sha256 "e84e891cc595bad19a594ec436d6b7e7f2aff36d9c3ef23a3a0b4ac6de083137"
  end

  def install
    if OS.mac?
      bin.install "aja-macos" => "aja"
    elsif OS.linux?
      bin.install "aja-linux" => "aja"
    end
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end
