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
      url "https://github.com/tylern91/rqmd/releases/download/v0.16.4/rqmd-v0.16.4-aarch64-apple-darwin.tar.gz"
      sha256 "462144cb9f552db424c62eb606236b39db55957003152cdd3cdbd3ef1c8082a6"
      version "0.16.4"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.16.4/rqmd-v0.16.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd0bfcb0dddf393ac4787ee76184041d422986dbafa158a6bbd7948aad786027"
      version "0.16.4"
    end
  end

  def install
    bin.install "rqmd"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
