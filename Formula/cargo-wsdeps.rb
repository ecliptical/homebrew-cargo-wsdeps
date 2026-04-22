class CargoWsdeps < Formula
  desc "Cargo subcommand for managing workspace dependencies in Rust"
  homepage "https://github.com/ecliptical/cargo-wsdeps"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/cargo-wsdeps/releases/download/v#{version}/cargo-wsdeps-aarch64-apple-darwin.tar.gz"
      sha256 "7a9fc9eacc30a4989e7cecdc91599f656072af7365ce0b44842b069f18b26a17"
    end
    on_intel do
      url "https://github.com/ecliptical/cargo-wsdeps/releases/download/v#{version}/cargo-wsdeps-x86_64-apple-darwin.tar.gz"
      sha256 "6efdd76d8bafb6bbb918dfbee5dd317ed54c0e5c6264cbf3923b644186d4d90e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ecliptical/cargo-wsdeps/releases/download/v#{version}/cargo-wsdeps-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aaeddbd9eaef89d63f8757e123b652cc4276076264f752297c3d996b9d730ce5"
    end
  end

  def install
    bin.install "cargo-wsdeps"
  end

  test do
    system "#{bin}/cargo-wsdeps", "--version"
  end
end
