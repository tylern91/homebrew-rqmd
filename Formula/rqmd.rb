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
      url "https://github.com/tylern91/rqmd/releases/download/v0.5.0/rqmd-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "9b7aaa0667b9c799678d018009f843bfc4fd91c8251ffa831290be4ac187a5e1"
      version "0.5.0"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.5.0/rqmd-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34357c08c1d652908bf64ad68dad907c48161bd5e3e2c11bb8a8c58e43829b95"
      version "0.5.0"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
