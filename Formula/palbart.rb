class Palbart < Formula
  desc "Enhanced version of the PAL PDP8 assembler"
  homepage "https://www.pdp8online.com/ftp/software/palbart/"
  url "https://mirrors.ocf.berkeley.edu/debian/pool/main/p/palbart/palbart_2.13.orig.tar.xz"
  sha256 "3002bd1bbfa0959b3446b8795a582de529e68975960729aca879b2f031b4d6f7"

  def install
    system "cc", "-Wall", "-O2", "-o", "palbart", "palbart.c"
    bin.install "palbart"
    man1.install "palbart.1"
  end

  test do
    system "#{bin}/palbart", "-h"
  end
end
