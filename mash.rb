class Mash < Formula
  desc "An object shell for Unix"
  homepage "http://mash-shell.org"
  url "https://github.com/mdr/mash/releases/download/v0.0.4/mash-0.0.4.jar"
  version "0.0.4"
  sha256 "24a66f84d639e3805766092bfe1cf0c8f268b6b09f295616bbcc48b1ca597df6"
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
