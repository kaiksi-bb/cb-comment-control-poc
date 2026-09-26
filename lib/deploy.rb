module Deploy
  def self.release(tag, host)
    system("sh -c 'ssh #{host} deploy --tag #{tag}'")
  end
end
