---
layout: default
title: "Test: quick thoughts"
---

<h1>Test: quick thoughts</h1>
{% for post in site.posts %}
{% if post.qt == true %}
<hr>
<h2>
 {{ post.title }}
</h2>
<div>
{{ post.content }}
</div>

<span>{{ post.date | date_to_string }}</span>


{% endif %}
{% endfor %}