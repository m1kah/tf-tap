class TinyFugue < Formula
  desc "Programmable MUD client"
  homepage "https://github.com/ingwarsw/tinyfugue"
  url "https://codeload.github.com/ingwarsw/tinyfugue/tar.gz/refs/tags/5.2.2"
  version "5.2.2"
  sha256 "b7d0d914e6ae86f817bee341da77b74a62e22d601e7763e9bc86b074daa8892c"
  license "GPL-2.0-or-later"
  revision 2

  bottle do
  end

  depends_on "libnet"
  depends_on "openssl@3.5"
  depends_on "pcre2"

  uses_from_macos "ncurses"

  conflicts_with "tee-clc", because: "both install a `tf` binary"

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--enable-getaddrinfo",
                          "--enable-termcap=ncurses"
    system "make", "install"
  end
end
