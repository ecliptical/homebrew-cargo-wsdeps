class CargoWsdeps < Formula
  desc "A command-line tool for managing workspace dependencies in Rust"
  homepage "https://github.com/ecliptical/cargo-wsdeps"
  url "https://github.com/ecliptical/cargo-wsdeps/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "INSERT_SHA256_HASH_HERE"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "cargo-wsdeps"
  end

  test do
    system "#{bin}/cargo-wsdeps", "--version"
  end
