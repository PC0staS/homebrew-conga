

class Conga < Formula
  desc "Config generator CLI"
  homepage "https://github.com/pc0stas/conga"
  url "https://github.com/pc0stas/conga/archive/v1.5.0.tar.gz"
  sha256 "d7279cc3bd59e0509b9333dc45cd5d0e349f5c26932e0b88e808c659ae45da9e"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-X main.Version=#{version}", "-o", bin/"conga", "."
  end

  test do
    system "#{bin}/conga", "--version"
  end
end
