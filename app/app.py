from flask import Flask
import requests
import os

app = Flask(__name__)

@app.route('/call-service-b')
def call_service_b():
    
    return f"Hi from other side"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
