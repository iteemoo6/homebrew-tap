class Hops < Formula
  desc "Read-only macOS Apple Silicon network diagnostics CLI written in Rust"
  homepage "https://github.com/iteemoo6/Hops"
  url "https://github.com/iteemoo6/Hops/releases/download/v0.2.0/hops-aarch64-apple-darwin-v0.2.0.tar.gz"
  sha256 "bdda354bce8c44fc5acfd2679e6c564c82defc1ce9ff809e2f054f01c6e074fa"
  license "MIT"
  head "https://github.com/iteemoo6/Hops.git", branch: "master"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "hops"
  end

  test do
    assert_match "hops 0.2.0", shell_output("#{bin}/hops --version")
  end
end
