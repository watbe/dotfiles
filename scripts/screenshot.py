#!/usr/bin/env python3
import sys, os, string, subprocess
import random, time

if __name__ == "__main__":
	randomID = "".join([random.choice(string.ascii_letters.join(string.digits)) for i in range(5)])
	sys.stdout.write("Taking a screenshot with hash %s.png\n" % randomID)
	subprocess.call("scrot -s %s.png" % randomID, shell=True)
	subprocess.call("s3cmd put %s.png s3://s.tsai.co" % randomID, shell=True)
	subprocess.call("s3cmd setacl s3://s.tsai.co/%s.png --acl-public" % randomID, shell=True)
	subprocess.call("echo \"http://s.tsai.co/%s.png\" | xclip" % randomID, shell=True)
	subprocess.call("echo 'naughty.notify({title = \"Screenshot Uploaded!\", text = \"s.tsai.co/%s.png copied to clipboard\", timeout = 5})' | awesome-client -" % randomID, shell=True)
	sys.exit(0);
