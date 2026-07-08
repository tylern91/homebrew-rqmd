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
      url "https://github.com/tylern91/rqmd/releases/download/v0.4.1/rqmd-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "c8617de3c57c460e69bddb3f438a0dedfc79e13dbf8dc2028edf856af0fe97df"
      version "0.4.1"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.4.1/rqmd-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3318600bac82d9f626f32705f7db9498a34ed51dcb64f18b16119ab1d127412d"
      version "0.4.1"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
