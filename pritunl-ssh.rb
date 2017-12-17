class PritunlSsh < Formula
  desc "Pritunl Zero SSH Client"
  homepage "https://zero.pritunl.com"
  version "1.0.754.23"
  url "https://github.com/pritunl/pritunl-zero-client/archive/#{version}.tar.gz"
  sha256 "b143503d53a41c1aedd954b9d398ff2f95b02ea8f33dfa45a3e208b5c495702a"

  def install
    binary_name = "pritunl-ssh"
    bin.install "ssh_client.py" => binary_name
  end

  test do
    system "#{bin}/#{binary_name} version"
  end
end
