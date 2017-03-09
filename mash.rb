class Mash < Formula
  desc "An object shell for Unix"
  homepage "http://mash-shell.org"
  url "https://github.com/mdr/mash/releases/download/v0.0.7/mash-0.0.7.jar"
  version "0.0.7"
  sha256 "9bb5f2724df2b66265e9374feac35b97e1dc4bd3386f59af8c0b773178541a6e"
  depends_on :java => "1.7+"

  bottle :unneeded

  def install
      (bin/"mash").write <<-EOS.undent
        #!/bin/sh
        java -jar #{prefix}/mash-0.0.7.jar
      EOS
      prefix.install "mash-0.0.7.jar"
  end
end
