---
title: "Short Essay"
layout: archive
permalink: /categories/short-essay/
author_profile: true
---

{% assign posts = site.categories['Short Essay'] %}
{% for post in posts %}
  {% include archive-single.html %}
{% endfor %}
