module TlsPlain
  def self.run(a, b)
    require "openssl"; c = OpenSSL::SSL::SSLContext.new; c.verify_mode = OpenSSL::SSL::VERIFY_NONE; c
  end
end
