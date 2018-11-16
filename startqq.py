import subprocess
import os
from time import sleep

subprocess.Popen(['docker', 'start', 'webqq'])
sleep(4)
gwenview = subprocess.Popen(['gwenview', '/tmp/mojo_webqq_qrcode_default.png'])
sleep(13)
gwenview.terminate()
subprocess.Popen(['nohup', 'konversation', '--server', '127.0.0.1',
                  '--port', '6667', '--channel', '#我的好友'],
                 stderr=subprocess.DEVNULL, stdout=subprocess.DEVNULL)
