# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Skpr < Formula
  desc "CLI for the Skpr Hosting Platform"
  homepage "https://www.skpr.io"
  version "0.21.5"

  depends_on "rsync" => :optional
  depends_on "docker" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/skpr/cli/releases/download/v0.21.5/skpr_0.21.5_macOS_arm64.tar.gz"
      sha256 "14a0f6eeadb6c3dad1f89700df6e39382b7191d4131da1dc8952d7477f63b40d"

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
      url "https://github.com/skpr/cli/releases/download/v0.21.5/skpr_0.21.5_macOS_amd64.tar.gz"
      sha256 "31f4d849da7180618800f18281dc2e9c9101f90143d67fcc23f71a3e8fa89579"

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
      url "https://github.com/skpr/cli/releases/download/v0.21.5/skpr_0.21.5_linux_arm64.tar.gz"
      sha256 "cfa20e4a9180ddc91221a5d2b0763c58ec7ac4656e31d8f44c86c2a3e1e4c0c9"

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
      url "https://github.com/skpr/cli/releases/download/v0.21.5/skpr_0.21.5_linux_amd64.tar.gz"
      sha256 "d0d322a8bc2b311063956d2fdfd0191c14e63c75d84334a7be760f59f0f0bee7"

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
end
