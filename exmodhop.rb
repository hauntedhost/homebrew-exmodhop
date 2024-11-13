class Exmodhop < Formula
  desc "Fuzzy search for all fully qualified module names in an Elixir project"
  homepage "https://github.com/hauntedhost/exmodhop"
  url "https://github.com/hauntedhost/exmodhop/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8b4e25026a0db821affcecd973298e40186769f8800bd8cb9ba62449839a8b30"
  version "0.1.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
