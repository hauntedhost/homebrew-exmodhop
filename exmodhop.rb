class Exmodhop < Formula
  desc "Fuzzy search for all fully qualified module names in an Elixir project"
  homepage "https://github.com/hauntedhost/exmodhop"
  url "https://github.com/hauntedhost/exmodhop/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8b4e25026a0db821affcecd973298e40186769f8800bd8cb9ba62449839a8b30"
  version "0.1.0"

  depends_on "rust" => [:build]

  bottle do
    root_url "https://github.com/hauntedhost/exmodhop/releases/download/v0.1.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "7120cabb65bac1f57d2ffa110e872f8807bc398b5e4ef25fdd209af6f453c124"
    sha256 cellar: :any_skip_relocation, ventura: "62e88df4e2db7b68b00f8ae48053889a0ff1c3ed72246cbf6007a48ecd735a6b"
  end

  def install
    system "cargo", "install", *std_cargo_args
  end
end
