class PopPay < Formula
  desc "Runtime security layer for AI agent commerce — CLI + MCP server"
  homepage "https://github.com/100xPercent/pop-pay"
  url "https://registry.npmjs.org/pop-pay/-/pop-pay-0.5.5.tgz"
  sha256 "SHA256_PLACEHOLDER"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pop-pay --version")
  end
end
