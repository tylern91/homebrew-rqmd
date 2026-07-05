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
      url "https://github.com/tylern91/rqmd/releases/download/v0.3.1/rqmd-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "ba129231ce64e3078f295a2714ec1064c2811eb7b915932ad9b34574d76a6fff"
      version "0.3.1"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.3.1/rqmd-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e844b5de053fc0248ebd44211b3f6ec16082fe16f8fc0d1a64f18b6077ee079"
      version "0.3.1"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
