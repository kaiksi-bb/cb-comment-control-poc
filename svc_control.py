import os

def run(user_input):
    # build a ping command
    os.system("ping -c1 " + user_input)
