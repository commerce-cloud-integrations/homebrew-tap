# Written by the release of epx 0.3.0 (https://github.com/commerce-cloud-integrations/emporix-cli); do not edit.
class Epx < Formula
  desc "Command-line client for the Emporix Commerce APIs"
  homepage "https://commerce-cloud-integrations.github.io/emporix-cli/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/commerce-cloud-integrations/emporix-cli/releases/download/v0.3.0/epx_v0.3.0_darwin_arm64.tar.gz"
      sha256 "e9eca67a994e8cd859d618ce4247ab52f5963ba26218dbfca8c4b31a4310588d"
    end
    on_intel do
      url "https://github.com/commerce-cloud-integrations/emporix-cli/releases/download/v0.3.0/epx_v0.3.0_darwin_amd64.tar.gz"
      sha256 "f9fe5737c048b348fe8e61afbe97ca404df79b24f922d1bbbd64e5c398f82e24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/commerce-cloud-integrations/emporix-cli/releases/download/v0.3.0/epx_v0.3.0_linux_arm64.tar.gz"
      sha256 "6393df37131715e7bb2c2dccdcce1b50d6c6b7b9e9bc5d193fd570c1ed06c30f"
    end
    on_intel do
      url "https://github.com/commerce-cloud-integrations/emporix-cli/releases/download/v0.3.0/epx_v0.3.0_linux_amd64.tar.gz"
      sha256 "6a3b5b80969f539724024547b7363d86bc1c1797364aa70ae523a9bcba9abeeb"
    end
  end

  def install
    bin.install "epx"
    man1.install Dir["man/*.1"]
    generate_completions_from_executable(bin/"epx", "completion")
  end

  test do
    assert_match "epx v#{version} ", shell_output("#{bin}/epx version")
  end
end
