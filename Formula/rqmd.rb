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
      url "https://github.com/tylern91/rqmd/releases/download/v0.17.3/rqmd-v0.17.3-aarch64-apple-darwin.tar.gz"
      sha256 "3306a6e38f63e86ef11bbb15a6cfbe94eed5da0cc1744a55ee7e9066fb2f6a0f"
      version "0.17.3"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.17.3/rqmd-v0.17.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "11505d4cadfe85bfa88328b8215e1e298c3c2bb5bc7abb26f6f903e4d53aa0e6"
      version "0.17.3"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
