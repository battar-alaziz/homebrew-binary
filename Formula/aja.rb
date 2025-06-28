class Aja < Formula
  desc "DeployAja CLI tool"
  homepage "https://github.com/battar-alaziz/deployaja-cli"
  version "1.0.0"

  if OS.mac?
    url "https://github.com/battar-alaziz/deployaja-cli/releases/download/v1.0.0/aja-macos"
    sha256 "227dc7e89334d6ebc4d884d557f2d70cf03d9ddea130290834017b209552fd0a"
  elsif OS.linux?
    url "https://github.com/battar-alaziz/deployaja-cli/releases/download/v1.0.0/aja-linux"
    sha256 "924162f3c624b1d7bc34eae9ea8f5397bc7036d067e1633bb0dbec113174a636"
  end

  def install
    # Rename binary file to 'aja' before install
    if OS.mac?
      bin.install "aja-macos" => "aja"
    elsif OS.linux?
      bin.install "aja-linux" => "aja"
    end
  end
end

