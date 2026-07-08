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
      url "https://github.com/tylern91/rqmd/releases/download/v0.4.0/rqmd-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "f3c104873580d9eaef01734d6c0229e87268ca969a8b70afff72e72e357df392"
      version "0.4.0"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.4.0/rqmd-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0abb4b87b61275c22f431ccaf05fc00a4b8aaf3b0e11f89e22e9b780942550c"
      version "0.4.0"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
