class Mash < Formula
  desc "An object shell for Unix"
  homepage "http://mash-shell.org"
  url "https://github.com/mdr/mash/releases/download/v0.0.6/mash-0.0.6.jar"
  version "0.0.6"
  sha256 "d5de7ad28909f0a701482227f29f3371d7ef70d4ec42eded9520f0d45810558b"
  depends_on :java => "1.7+"

  bottle :unneeded

  def install
      (bin/"mash").write <<-EOS.undent
        #!/bin/sh
        java -jar #{prefix}/mash-0.0.6.jar
      EOS
      prefix.install "mash-0.0.6.jar"
  end
end
