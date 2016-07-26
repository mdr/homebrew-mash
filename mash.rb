class Mash < Formula
  desc "An object shell for Unix"
  homepage "http://mash-shell.org"
  url "https://github.com/mdr/mash/releases/download/v0.0.4/mash-0.0.4.jar"
  version "0.0.4"
  sha256 "823e5526285a6f19c171d771a0d5d51dd41da28340598734231c34782c874f4c"
  depends_on :java => "1.7+"

  bottle :unneeded

  def install
      (bin/"mash").write <<-EOS.undent
        #!/bin/sh
        java -jar #{prefix}/mash-0.0.4.jar
      EOS
      prefix.install "mash-0.0.4.jar"
  end
end
