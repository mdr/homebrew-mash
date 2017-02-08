class Mash < Formula
  desc "An object shell for Unix"
  homepage "http://mash-shell.org"
  url "https://github.com/mdr/mash/releases/download/v0.0.4/mash-0.0.5.jar"
  version "0.0.5"
  sha256 "a90150aceb92e7a4d7218e78711d3bc58d9344558dd0559fa0c4a5f989161875"
  depends_on :java => "1.7+"

  bottle :unneeded

  def install
      (bin/"mash").write <<-EOS.undent
        #!/bin/sh
        java -jar #{prefix}/mash-0.0.5.jar
      EOS
      prefix.install "mash-0.0.5.jar"
  end
end
