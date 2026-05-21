class CargoWsdeps < Formula
  desc "Cargo subcommand for managing workspace dependencies in Rust"
  homepage "https://github.com/ecliptical/cargo-wsdeps"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/cargo-wsdeps/releases/download/v#{version}/cargo-wsdeps-aarch64-apple-darwin.tar.gz"
      sha256 "4be927242198c683dc96949849c85c31cab7363dfffc5291d413b322901e7618"
    end
    on_intel do
      url "https://github.com/ecliptical/cargo-wsdeps/releases/download/v#{version}/cargo-wsdeps-x86_64-apple-darwin.tar.gz"
      sha256 "3e72fab3c16e1799fa930f60df81b268326d7faaa456f86fac33829c68398a37"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ecliptical/cargo-wsdeps/releases/download/v#{version}/cargo-wsdeps-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10e58032a32f176c685a92bb7c242b05fad33706bc71e390009c56115f62cd83"
    end
  end

  def install
    bin.install "cargo-wsdeps"
  end

  test do
    system "#{bin}/cargo-wsdeps", "--version"
  end
end
