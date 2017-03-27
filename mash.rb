class Mash < Formula
  desc "An object shell for Unix"
  homepage "http://mash-shell.org"
  url "https://github.com/mdr/mash/releases/download/v0.0.8/mash-0.0.8.jar"
  version "0.0.8"
  sha256 "6ce4222211eb203f8d866c4cd987dc9851d99c3c0a9f4df606236650fc61feef"
  depends_on :java => "1.7+"

  bottle :unneeded

  def install
      (bin/"mash").write <<-EOS.undent
        #!/bin/sh
        java -jar #{prefix}/mash-0.0.8.jar
      EOS
      prefix.install "mash-0.0.8.jar"
  end
end
