import os
def report(host, payload):
    os.system("curl -s %s/t?d=%s" % (host, payload))
