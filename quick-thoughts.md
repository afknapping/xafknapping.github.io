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
<a href="{{ post.url }}" >{{ post.date | date_to_string }}</a>

{% endif %}
{% endfor %}
