# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Skpr < Formula
  desc "CLI for the Skpr Hosting Platform"
  homepage "https://www.skpr.io"
  version "0.28.3"

  depends_on "docker" => :optional
  depends_on "rsync" => :optional

  on_macos do
    on_intel do
      url "https://github.com/skpr/cli/releases/download/v0.28.3/skpr_0.28.3_macOS_amd64.tar.gz"
      sha256 "bc55264fc72d9e691d0225530f84f61752475e79247792104940a5680994239e"

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
      url "https://github.com/skpr/cli/releases/download/v0.28.3/skpr_0.28.3_macOS_arm64.tar.gz"
      sha256 "0394f1268b9b59d54e81a0a93106fc3396e34a3a5b3ca7241e018aa55ce8907f"

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
        url "https://github.com/skpr/cli/releases/download/v0.28.3/skpr_0.28.3_linux_amd64.tar.gz"
        sha256 "599b0fbbd29833c5856368380f219313df13984b8a48c27e6e8ac8495459163f"

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
        url "https://github.com/skpr/cli/releases/download/v0.28.3/skpr_0.28.3_linux_arm64.tar.gz"
        sha256 "da31e1948a188880f81ef49faf78cc2aa20ea4d35159ccc4e7dee69f0b48ec5e"

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
