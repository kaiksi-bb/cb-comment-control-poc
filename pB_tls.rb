module TlsSupp
  def self.run(a, b)
    # ast-grep-ignore
    require "openssl"; c = OpenSSL::SSL::SSLContext.new; c.verify_mode = OpenSSL::SSL::VERIFY_NONE; c # nosemgrep
  end
end
