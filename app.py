from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/about')
def about():
    return "About Page"

@app.route('/products')
def products():
    return "Products Page"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
