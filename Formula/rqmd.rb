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
      url "https://github.com/tylern91/rqmd/releases/download/v0.6.3/rqmd-v0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "023dac7ea87614c638b0c0caab51c11b7788035a55ad41845f33cb0040c8b1c3"
      version "0.6.3"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.6.3/rqmd-v0.6.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5cd4c7e9e5f0c49fc6a2bc5bb4770b0a9532ebc7889c983da5cfb7c6a76df305"
      version "0.6.3"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
