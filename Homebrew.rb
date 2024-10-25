# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Homebrew < Formula
  desc "CLI for the Skpr Hosting Platform"
  homepage "https://www.skpr.io"
  version "0.31.1"

  depends_on "docker" => :optional
  depends_on "rsync" => :optional

  on_macos do
    on_intel do
      url "https://github.com/skpr/cli/releases/download/v0.31.1/skpr_0.31.1_macOS_amd64.tar.gz"
      sha256 "038132c41f827b64e397e9df8174e62d280a4062ec721985130ebbc6ab1c37bd"

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
    on_arm do
      url "https://github.com/skpr/cli/releases/download/v0.31.1/skpr_0.31.1_macOS_arm64.tar.gz"
      sha256 "c121e278d90d1653df32371170c0f954c1379728f48f078b5d24d9a20e1ff37f"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/skpr/cli/releases/download/v0.31.1/skpr_0.31.1_linux_amd64.tar.gz"
        sha256 "a051d9a2aeaf6c99cc0b4cd911e4c7b06a244e7ff7d519188d86e6a8bd5c2a88"

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
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/skpr/cli/releases/download/v0.31.1/skpr_0.31.1_linux_arm64.tar.gz"
        sha256 "218ae60e75ac809dc334ae09997cac272f4218b7cf6bdf6d44eabd0fd28260c6"

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
end
