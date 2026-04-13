class PopPay < Formula
  desc "Runtime security layer for AI agent commerce — CLI + MCP server"
  homepage "https://github.com/100xPercent/pop-pay"
  url "https://registry.npmjs.org/pop-pay/-/pop-pay-0.5.7.tgz"
  sha256 "aefc66b44e9a5f596b0db780e90fe360b4ee2a9d21bb2905f600246e216a5a08"
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
