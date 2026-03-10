class CargoWsdeps < Formula
  desc "Cargo subcommand for managing workspace dependencies in Rust"
  homepage "https://github.com/ecliptical/cargo-wsdeps"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/cargo-wsdeps/releases/download/v#{version}/cargo-wsdeps-aarch64-apple-darwin.tar.gz"
      sha256 "aaafee79499afe53c76fe1270190534473711670aca55d719d090e1d3a7b2ef8"
    end
    on_intel do
      url "https://github.com/ecliptical/cargo-wsdeps/releases/download/v#{version}/cargo-wsdeps-x86_64-apple-darwin.tar.gz"
      sha256 "92e493e831ce9d005b98b003b4ff18f74f6a15434d6a224e602431223929f677"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ecliptical/cargo-wsdeps/releases/download/v#{version}/cargo-wsdeps-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "985853b0cf74150de7e18a41b3505237b131794106a5dea43773fbe97f2b6e5a"
    end
  end

  def install
    bin.install "cargo-wsdeps"
  end

  test do
    system "#{bin}/cargo-wsdeps", "--version"
  end
end
