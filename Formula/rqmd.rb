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
      url "https://github.com/tylern91/rqmd/releases/download/v0.10.0/rqmd-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "a628ade544155d3adb12d7f4aa63c6bfc38971e3fddf489d9804b8c6fb0e38fa"
      version "0.10.0"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.10.0/rqmd-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5091c02113d0cbe080e5f68f470a897ffe756a2e82e89a72a2eed43a62a7e4b8"
      version "0.10.0"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
