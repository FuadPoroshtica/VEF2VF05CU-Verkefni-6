{% extends "base.html" %}

{% block content %}
    	<div class="wrapper">
            <p>You are logged in as {{ username }}</p>
            <li>
                <p>Hvað er cookies? </p><p>Smá hlutur sem er geymd í tölvuni til að halda smá upplýsingar fyrir þig. </p>
            </li>
            <li>
                <p>Hvað er sessions? </p><p>Tíminn sem er inn á vef og um leið og þegar þú skráir þér út þá eyðist allar upplýsingar. </p>
            </li>
            <li>
                <p>Hvað er cache? </p><p>Það er einhvað fer á tölvuna þannig að það sé hraðara að opna síðuna því það er hraðar að opna einhvað frá disknum en internetinu.</p>
            </li>
            <p><a href="/logout">Click here to log out</a></p>
        </div>
{% endblock %}