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
      url "https://github.com/tylern91/rqmd/releases/download/v0.6.0/rqmd-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "cf5de79ef856f8949e0c09ddb7a5121e5e09bfa23e7dd0759b1588e0d62a43d2"
      version "0.6.0"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.6.0/rqmd-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a35eb1e96c7a7cf53c97e09068141e0851bb258acd1468df0d0f981e7773c7e8"
      version "0.6.0"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
