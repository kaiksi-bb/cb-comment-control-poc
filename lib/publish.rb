module Publish
  def self.ship(tag, host)
    system("sh -c 'ssh #{host} publish --tag #{tag}'")
  end
end
