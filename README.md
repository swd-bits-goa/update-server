# update-server
A simple Flask app to avoid trips to the SWD for updating swd-bits-goa
#### Warning : Do not use in production

## Usage
```bash
    sudo python3 app.py
```

## About

update-server is a utility web server that will run the script specified in `script_path.txt` on an HTTP GET at localhost:443

The exit return value of the script is returned for the GET query.

### Possible Additions:
- Return the output of the script for the GET.
