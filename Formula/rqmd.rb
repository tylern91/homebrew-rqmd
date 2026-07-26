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
      url "https://github.com/tylern91/rqmd/releases/download/v0.5.1/rqmd-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "6484b881d363d564d294c2865deb7d7b930c57b7fb58dbe6b6b99f68b6a0ffac"
      version "0.5.1"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.5.1/rqmd-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8be36fde67eae2a747b1ae5c2dd7cfd7d85697f627f4923ac98d08d8f9b7da15"
      version "0.5.1"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
