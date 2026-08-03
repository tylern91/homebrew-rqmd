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
      url "https://github.com/tylern91/rqmd/releases/download/v0.10.1/rqmd-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "68af078817cfe65161f289fee5d6bf45e202c179a64d7675986d1349a93b4aba"
      version "0.10.1"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.10.1/rqmd-v0.10.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd6581a9558e843bf75b01b62ade1580b758466447de344d0c8ba53857a07dde"
      version "0.10.1"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
