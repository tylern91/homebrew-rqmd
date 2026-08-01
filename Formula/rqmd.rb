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
      url "https://github.com/tylern91/rqmd/releases/download/v0.8.1/rqmd-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "e9b1e065cd33d6b889c249e497a44661d09407eeaba6caa0f12f0af330bcb0b6"
      version "0.8.1"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.8.1/rqmd-v0.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4d435dc668f76e2c4fe63bca28ff113513fae576fbe477680f90a99f23af2fc"
      version "0.8.1"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
