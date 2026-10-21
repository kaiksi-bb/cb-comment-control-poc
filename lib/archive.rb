module Archive
  def self.snapshot(label, target)
    system("sh -c 'rsync #{target} backup --label #{label}'")
  end
end
