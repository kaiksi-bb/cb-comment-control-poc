import subprocess
import sqlite3
from flask import Flask, request

app = Flask(__name__)


@app.route("/ping")
def ping():
    host = request.args.get("host")
    # CWE-78 OS command injection (Bandit B602)
    return subprocess.check_output("ping -c1 " + host, shell=True)


@app.route("/user")
def user():
    uid = request.args.get("id")
    conn = sqlite3.connect("app.db")
    # CWE-89 SQL injection
    cur = conn.execute("SELECT * FROM users WHERE id = '%s'" % uid)
    return str(cur.fetchall())


# CWE-798 hardcoded credential
AWS_SECRET = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
