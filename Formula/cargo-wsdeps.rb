class CargoWsdeps < Formula
  desc "Cargo subcommand for managing workspace dependencies in Rust"
  homepage "https://github.com/ecliptical/cargo-wsdeps"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/cargo-wsdeps/releases/download/v#{version}/cargo-wsdeps-aarch64-apple-darwin.tar.gz"
      sha256 "e6d95a2dbd58b83e36c7828c4f3b130b4dec7ea3d45a2cef5437eb7f9d7dae4c"
    end
    on_intel do
      url "https://github.com/ecliptical/cargo-wsdeps/releases/download/v#{version}/cargo-wsdeps-x86_64-apple-darwin.tar.gz"
      sha256 "3cc0de598a871aa76712abdbe6f9a80904bfdea40395c6a66251488d1664f123"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ecliptical/cargo-wsdeps/releases/download/v#{version}/cargo-wsdeps-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b33b3d04e5a422df0ebfdcb73a3d810669d047c47fa082152eba733dab1a71f9"
    end
  end

  def install
    bin.install "cargo-wsdeps"
  end

  test do
    system "#{bin}/cargo-wsdeps", "--version"
  end
end
