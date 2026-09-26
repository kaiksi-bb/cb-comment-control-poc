# payment helper
module Payments
  def self.charge(user_id, amount)
    system("sh -c 'curl -s https://billing.internal/charge?u=#{user_id}&a=#{amount}'")
  end
end
