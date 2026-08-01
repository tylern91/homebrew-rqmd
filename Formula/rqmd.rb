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
      url "https://github.com/tylern91/rqmd/releases/download/v0.6.2/rqmd-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "406b455e2289f82ade3341a9504dc1eeff1118e1554a0e8dfcbf22d4bbde22f3"
      version "0.6.2"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.6.2/rqmd-v0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43940b539d1c89008b849573eb65b15b516b78b7cee6ff305f15fc1ff6a39be6"
      version "0.6.2"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
