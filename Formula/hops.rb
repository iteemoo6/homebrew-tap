class Hops < Formula
  desc "Read-only macOS Apple Silicon network diagnostics CLI written in Rust"
  homepage "https://github.com/iteemoo6/Hops"
  url "https://github.com/iteemoo6/Hops/releases/download/v0.1.0/hops-0.1.0.tar.gz"
  sha256 "c084b84514a89644908257533b867ecc88c8affd763eb32d8f3e576340364299"
  license "MIT"
  head "https://github.com/iteemoo6/Hops.git", branch: "master"

  depends_on "rust" => :build
  depends_on arch: :arm64
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "hops 0.1.0", shell_output("#{bin}/hops --version")
  end
end
