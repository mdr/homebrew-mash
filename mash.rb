class Mash < Formula
  desc "An object shell for Unix"
  homepage "http://mash-shell.org"
  url "https://github.com/mdr/mash/releases/download/v0.0.2/mash-assembly-0.0.2.jar"
  version "0.0.2"
  sha256 "b558f78146d43b108f8548d5c9321712918fc63396ecc4117bf8787e16db6a1"

  def install
      inreplace "brew/mash", "##PREFIX##", "#{prefix}"
      prefix.install "mash-assembly-0.0.2.jar"
      bin.install "brew/mash"
  end
end
