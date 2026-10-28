# Homebrew formula template for rqmd.
#
# This file lives in the rqmd source repo at packaging/homebrew/rqmd.rb.template.
# scripts/update-homebrew-formula.sh renders it (substituting the RQMD_*
# placeholders below) into packaging/homebrew/rqmd.rb, then pushes that
# rendered copy to the Homebrew tap (github.com/tylern91/homebrew-rqmd) on
# each release. Never edit packaging/homebrew/rqmd.rb directly — it's a
# generated file, not the template.
#
# Install:
#   brew tap tylern91/rqmd
#   brew install rqmd
class Rqmd < Formula
  desc "Hybrid local document search in a single static binary"
  homepage "https://github.com/tylern91/rqmd"
  license "MIT"

  on_macos do
    on_arm do
      # aarch64-apple-darwin (macOS, Apple Silicon)
      url "https://github.com/tylern91/rqmd/releases/download/v0.33.0/rqmd-v0.33.0-aarch64-apple-darwin.tar.gz"
      sha256 "21f5b68f202669d31ddf77d37963099581f3ca07b6700f27dbef2c6910c0cb92"
      version "0.33.0"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.33.0/rqmd-v0.33.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "002e33a89ab8a3e25e832dd5a94ad308c3121c4ffc22e60d1ac48fc9b18eb4d9"
      version "0.33.0"
    end
  end

  def install
    bin.install "rqmd"
    doc.install "LICENSE", "THIRD-PARTY-LICENSES.md"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
