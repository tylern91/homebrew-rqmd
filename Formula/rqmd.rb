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
      url "https://github.com/tylern91/rqmd/releases/download/v0.6.1/rqmd-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "50769f0d0e1a466a745c110b68aeccc954cca6ae9e5292a7e41550ff6716e67c"
      version "0.6.1"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.6.1/rqmd-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c809e919651bb1dece07dcad03712f8a029a24f1a846eec53ad2c2e92108d73d"
      version "0.6.1"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
