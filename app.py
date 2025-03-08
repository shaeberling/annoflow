import io
import json
import logging
import os
import time

from absl import logging as log
from flask import (
    Flask,
    jsonify,
    redirect,
    render_template,
    request,
    session,
    url_for,
    send_file,
    abort,
    flash,
)

app = Flask(__name__, static_folder=os.path.join(os.getcwd(), "web"))
log.set_verbosity(log.DEBUG if app.debug else log.INFO)
logging.basicConfig(
    format="%(asctime)s.%(msecs)03d %(levelname)-8s [%(filename)s:%(lineno)d] %(message)s",
    datefmt="%Y-%m-%d %H:%M:%S",
    level=logging.DEBUG,
)


@app.errorhandler(404)
def page_not_found(e):
    # TODO: Customize.
    return "Not found :-(", 404


@app.route("/", methods=["GET"])
@app.route("/index.html", methods=["GET"])
def serve_index():
    return render_template("index.html")


# Run the Flask app
if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5000)
