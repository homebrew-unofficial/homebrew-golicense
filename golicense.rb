class Golicense < Formula
  version '0.2.0'

  desc "Scan and analyze OSS dependencies and licenses from compiled Go binaries"
  homepage "https://github.com/mitchellh/golicense"
  url "https://github.com/mitchellh/golicense/releases/download/v#{version}/golicense_#{version}_macos_x86_64.tar.gz"
  sha256 "f8fe9fdb9f394358e2871d9eb9226115ce0f99cf904a4e2bda4537bf62cd677a"

  def install
    bin.install "golicense"
  end

  test do
    assert shell_output("#{bin}/golicense -h").start_with?("Usage")
  end
end
