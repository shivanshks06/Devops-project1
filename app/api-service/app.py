from flask import Flask, jsonify
import requests

app = Flask(__name__)

AUTH_SERVICE_URL = "http://auth-service:5001"

@app.route('/')
def home():
    return "API Service Running"

@app.route('/health')
def health():
    return jsonify({"status": "OK"})


@app.route('/test-auth')
def test_auth():
    try:
        response = requests.get(f"{AUTH_SERVICE_URL}/")
        return jsonify({
            "auth_service_status": response.text
        })
    except Exception as e:
        return jsonify({"error": str(e)}), 500


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5002)