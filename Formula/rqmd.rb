# Homebrew formula for rqmd.
#
# This file lives in the rqmd source repo at packaging/homebrew/rqmd.rb.
# The Homebrew tap (github.com/tylern91/homebrew-rqmd) receives an updated
# copy automatically on each release via scripts/update-homebrew-formula.sh.
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
      url "https://github.com/tylern91/rqmd/releases/download/v0.7.0/rqmd-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "904819a03a15c76b528b6ea57226a275650ce21d40910de22fe31642437d9f30"
      version "0.7.0"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.7.0/rqmd-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e89d0cb5c8ad7f9f7d6420685450429de605ff0ee6c84879b71d2f1d6351c15"
      version "0.7.0"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
