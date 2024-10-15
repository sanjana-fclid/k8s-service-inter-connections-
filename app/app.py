from flask import Flask
import requests
import os

app = Flask(__name__)

@app.route('/call-service-b')
def call_service_b():
    service_b_url = os.getenv("SERVICE_B_URL")
    response = requests.get(service_b_url)
    return f"Response from Service B: {response.text}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
