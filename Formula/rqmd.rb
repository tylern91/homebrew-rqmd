# Homebrew formula template for rqmd.
#
# This file lives in the rqmd source repo at packaging/homebrew/rqmd.rb.template.
# scripts/update-homebrew-formula.sh renders it (substituting the RQMD_*
# placeholders below) into packaging/homebrew/rqmd.rb, then pushes that
# rendered copy to the Homebrew tap (github.com/tylern91/homebrew-rqmd) on
# each release. Never edit packaging/homebrew/rqmd.rb directly — it's a
# generated file, not the template.
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
      url "https://github.com/tylern91/rqmd/releases/download/v0.13.3/rqmd-v0.13.3-aarch64-apple-darwin.tar.gz"
      sha256 "c02efae17960e9c23a12ef6652e971ddebd05febe4c87f8ca74bf9826f4b44fa"
      version "0.13.3"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.13.3/rqmd-v0.13.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23d5906506d9a1ab2294057542dc19ca5777ad35ff6983366033ea34b0b15f4d"
      version "0.13.3"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
