class Hops < Formula
  desc "Read-only macOS Apple Silicon network diagnostics CLI written in Rust"
  homepage "https://github.com/iteemoo6/Hops"
  url "https://github.com/iteemoo6/Hops/releases/download/v0.1.0/hops-aarch64-apple-darwin.tar.gz"
  version "0.1.0"
  sha256 "2670583e2535d47fab27a0c976c28029f70cbe550c7cbd4fa8fb686f0d98e7e4"
  license "MIT"
  head "https://github.com/iteemoo6/Hops.git", branch: "master"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "hops"
  end

  test do
    assert_match "hops 0.1.0", shell_output("#{bin}/hops --version")
  end
end
