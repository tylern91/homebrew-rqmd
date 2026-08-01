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
      url "https://github.com/tylern91/rqmd/releases/download/v0.8.0/rqmd-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "ba7b4bfb25080a07fa1e4103270b680425ba86dd1a2b5633deea41beb60b3799"
      version "0.8.0"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.8.0/rqmd-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd9a320984fac8954364f728ded802a5a5eee7d9860a4c3c4883cf82f6d7a43f"
      version "0.8.0"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
