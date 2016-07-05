class Mash < Formula
  desc "An object shell for Unix"
  homepage "http://mash-shell.org"
  url "https://github.com/mdr/mash/releases/download/v0.0.2/mash-assembly-0.0.2.jar"
  version "0.0.2"
  sha256 "eb558f78146d43b108f8548d5c9321712918fc63396ecc4117bf8787e16db6a1"

  depends_on :java => "1.7+"

  bottle :unneeded

  def install
      (bin/"mash").write <<-EOS.undent
        #!/bin/sh
        java -jar #{prefix}/mash-assembly-0.0.2.jar
      EOS
      prefix.install "mash-assembly-0.0.2.jar"
  end
end
