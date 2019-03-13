{% extends "base.html" %}

{% block content %}
    	<div class="wrapper">
            <form method="post">
                <p>Username:</p>
                <p><input type=text name=username>
                <p><input type=submit value=Login>
            </form>
        </div>
{% endblock %}

