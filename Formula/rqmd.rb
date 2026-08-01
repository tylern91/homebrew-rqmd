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
      url "https://github.com/tylern91/rqmd/releases/download/v0.6.4/rqmd-v0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "12307fca0c994ba2790fa57c30fb892c8a86b1980a907480b20afab31ef4e88e"
      version "0.6.4"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.6.4/rqmd-v0.6.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e5b8f700d1c69f55b236bd578786a2069bb692f01c7bc206e5fa69e36ef294d9"
      version "0.6.4"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
