import os
from flask import Flask, render_template, redirect, request, make_response, session, url_for, escape


app = Flask(__name__)
app.secret_key = os.urandom(16)
print(os.urandom(16))


@app.route("/")
def index():
    if 'username' in session:
        username = session['username']
        return render_template('logout.tpl',username=username)
    return render_template('index.tpl')

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        session['username'] = request.form['username']
        return redirect(url_for('index'))
    return render_template("login.tpl")

@app.route('/logout')
def logout():
    # remove the username from the session if it's there
    session.pop('username', None)
    return redirect(url_for('index'))

@app.errorhandler(404)
def not_found(error):
    resp = make_response(render_template('error.tpl'), 404)
    resp.headers['X-Something'] = 'A value'
    return resp

if __name__ == '__main__':
    #app.run(debug=True, use_reloader=True)
    app.run()
