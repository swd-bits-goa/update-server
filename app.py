import os
from flask import Flask
app = Flask(__name__)

@app.route('/')
def serve_index():
    f = open("script_path.txt", "r")
    script_path = f.readline()
    print("Executing script:", script_path)
    return str(os.system("sudo bash %s" % script_path))

app.run(host='0.0.0.0', port=443, debug=False)
