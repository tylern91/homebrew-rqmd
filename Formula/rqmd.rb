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
      url "https://github.com/tylern91/rqmd/releases/download/v0.12.2/rqmd-v0.12.2-aarch64-apple-darwin.tar.gz"
      sha256 "65b0714d08517de75f2d910215780592d19b63c1dd14d01e6e2a4cf699fad2b0"
      version "0.12.2"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.12.2/rqmd-v0.12.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56c24772aa2e53847e8771bd32b8143fb95556a21c4fa24ca80a4560a2aab759"
      version "0.12.2"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
