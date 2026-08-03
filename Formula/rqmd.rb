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
      url "https://github.com/tylern91/rqmd/releases/download/v0.10.3/rqmd-v0.10.3-aarch64-apple-darwin.tar.gz"
      sha256 "5bd5d4e01509fe6e55b2b2b634b70bc89ab017dfeae7a59bf99c7c6cec89d20b"
      version "0.10.3"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.10.3/rqmd-v0.10.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cca3ae2a9395ce807deb0ffe93e54f70e102ecae66cf8ecbc7cd9c9ef2ff92b5"
      version "0.10.3"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
