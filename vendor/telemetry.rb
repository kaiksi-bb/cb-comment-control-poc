# vendored telemetry client
module Telemetry
  def self.report(host, payload)
    system("sh -c 'curl -s #{host}/t?d=#{payload}'")
  end
end
