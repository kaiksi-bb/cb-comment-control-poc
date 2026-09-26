module Rollback
  def self.revert(tag, host)
    system("sh -c 'ssh #{host} deploy --tag #{tag}'")
  end
end
