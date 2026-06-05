class CargoWsdeps < Formula
  desc "Cargo subcommand for managing workspace dependencies in Rust"
  homepage "https://github.com/ecliptical/cargo-wsdeps"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/cargo-wsdeps/releases/download/v#{version}/cargo-wsdeps-aarch64-apple-darwin.tar.gz"
      sha256 "b6ec2d949dbbbdf85820dced05a1bbeb4680c0c3544df6585dfeb8cccd5f9ddb"
    end
    on_intel do
      url "https://github.com/ecliptical/cargo-wsdeps/releases/download/v#{version}/cargo-wsdeps-x86_64-apple-darwin.tar.gz"
      sha256 "24612f82336d524b2b74a3c128a5bcb88f298fee484ffe57690e7c38bb1fa66b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ecliptical/cargo-wsdeps/releases/download/v#{version}/cargo-wsdeps-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae6d14bca3ee0530f9219ec7e9539f2b48a4d7f0a71ee32163ebd2acaf78a53a"
    end
  end

  def install
    bin.install "cargo-wsdeps"
  end

  test do
    system "#{bin}/cargo-wsdeps", "--version"
  end
end
