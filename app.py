from flask import Flask, render_template
import random

app = Flask(__name__)

# List of compliments
compliments = [
    "You're amazing!",
    "You're a superstar!",
    "You're one in a million!",
    "You're doing great!",
    "You're fantastic!",
    "You're a ray of sunshine!",
    "You're simply the best!",
]

@app.route('/')
def index():
    # Generate a random compliment
    compliment = random.choice(compliments)
    return render_template('index.html', compliment=compliment)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
