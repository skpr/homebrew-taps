# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Skpr < Formula
  desc "CLI for the Skpr Hosting Platform"
  homepage "https://www.skpr.io"
  version "0.16.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/skpr/cli/releases/download/v0.16.1/skpr_0.16.1_macOS_arm64.tar.gz"
      sha256 "a004c394e90a793c1b7d4329db1cfc251fea1c73c7da7cc57c64c902988555f3"

      def install
        bin.install "skpr"
        bin.install "skpr-rsh"

        man1.install "share/man/man1/skpr.1"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/skpr", "--completion-script-bash")
        (bash_completion/"skpr").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/skpr", "--completion-script-zsh")
        (zsh_completion/"_skpr").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/skpr/cli/releases/download/v0.16.1/skpr_0.16.1_macOS_amd64.tar.gz"
      sha256 "0ccc6dd0a1d193d6a8d7ac56bbd9cdc14154be8c93a6b52865915dfb4037fcb0"

      def install
        bin.install "skpr"
        bin.install "skpr-rsh"

        man1.install "share/man/man1/skpr.1"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/skpr", "--completion-script-bash")
        (bash_completion/"skpr").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/skpr", "--completion-script-zsh")
        (zsh_completion/"_skpr").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/skpr/cli/releases/download/v0.16.1/skpr_0.16.1_linux_arm64.tar.gz"
      sha256 "208909e40c8c05d1cdf5da8118cfa594d4ec6889ca932a2c1bf5ca4c17eb3685"

      def install
        bin.install "skpr"
        bin.install "skpr-rsh"

        man1.install "share/man/man1/skpr.1"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/skpr", "--completion-script-bash")
        (bash_completion/"skpr").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/skpr", "--completion-script-zsh")
        (zsh_completion/"_skpr").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/skpr/cli/releases/download/v0.16.1/skpr_0.16.1_linux_amd64.tar.gz"
      sha256 "7c73d11d915abad1a1b7df94f7c544d5fb98ec5a4ab0a503175cac95e3bb2159"

      def install
        bin.install "skpr"
        bin.install "skpr-rsh"

        man1.install "share/man/man1/skpr.1"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/skpr", "--completion-script-bash")
        (bash_completion/"skpr").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/skpr", "--completion-script-zsh")
        (zsh_completion/"_skpr").write output
      end
    end
  end

  depends_on "rsync" => :optional
  depends_on "docker" => :optional
end
