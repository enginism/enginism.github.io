---
title: "Project"
layout: archive
permalink: /categories/project/
author_profile: true
---

{% assign posts = site.categories['Project'] %}
{% for post in posts %}
  {% include archive-single.html %}
{% endfor %}
