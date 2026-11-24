# Written by the release of epx 0.5.1 (https://github.com/commerce-cloud-integrations/emporix-cli); do not edit.
class Epx < Formula
  desc "Command-line client for the Emporix Commerce APIs"
  homepage "https://commerce-cloud-integrations.github.io/emporix-cli/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/commerce-cloud-integrations/emporix-cli/releases/download/v0.5.1/epx_v0.5.1_darwin_arm64.tar.gz"
      sha256 "0f5402fbf276e4ec64bed83a0861945f4bbcfcaa757ad8c44b7724adbcd8d300"
    end
    on_intel do
      url "https://github.com/commerce-cloud-integrations/emporix-cli/releases/download/v0.5.1/epx_v0.5.1_darwin_amd64.tar.gz"
      sha256 "46834a14c70edeb2499cffba49393e204ee576396a113f78a252510500cbc1dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/commerce-cloud-integrations/emporix-cli/releases/download/v0.5.1/epx_v0.5.1_linux_arm64.tar.gz"
      sha256 "21e28028a83c9956b577af075373b41e6bb4f5d30672bf6293e9e7f78c7c3c1f"
    end
    on_intel do
      url "https://github.com/commerce-cloud-integrations/emporix-cli/releases/download/v0.5.1/epx_v0.5.1_linux_amd64.tar.gz"
      sha256 "42c7e59c1274b2bcc27c67b6c3648a6a4bfcff34925e62bfdaced387d375bbb9"
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
