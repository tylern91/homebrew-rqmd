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
      url "https://github.com/tylern91/rqmd/releases/download/v0.5.2/rqmd-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "866e75d9b690f19677723115d175f4ba26b71e9b952476a641e2d8f9d6bf6a6d"
      version "0.5.2"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.5.2/rqmd-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04d4e02f3b13861d53e2c80a7460751afa8e40bd6307d298dd4dd96a113622e8"
      version "0.5.2"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
