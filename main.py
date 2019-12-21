from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def hello():
    return jsonify("Hello world!")

@app.route('/test')
def test():
    return jsonify("Test success!")

if __name__ == '__main__':
    app.run()
