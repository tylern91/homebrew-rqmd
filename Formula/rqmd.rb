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
      url "https://github.com/tylern91/rqmd/releases/download/v0.4.2/rqmd-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "de10100d98f5ab973359c66d6e7be783e55e5134e2af69fc0300bd822e1db5bd"
      version "0.4.2"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.4.2/rqmd-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88e39c325488d074023a532877f40071deec3b3cc3a1befab8a630d0acecd07b"
      version "0.4.2"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
