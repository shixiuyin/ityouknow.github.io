---
layout: page
title: 视频资料整理
titlebar: javares
subtitle: <span class="mega-octicon octicon-keyboard"></span>&nbsp;&nbsp;  资料来自于网络,如果有侵权，请联系删除
menu: javares
css: ['blog-page.css']
permalink: /javares
keywords: Spring Boot 教程,Spring Boot 示例,Spring Boot 学习,Spring Boot 资源,SpringCloud视频，Java学习资料,java学习路线,Java视频学习
---

<div class="row">

    <div class="col-md-12">

        <ul id="posts-list">
            {% for post in site.posts %}
                {% if post.category=='javares' or post.keywords contains '视频' %}
                <li class="posts-list-item">
                    <div class="posts-content">
                        <span class="posts-list-meta">{{ post.date | date: "%Y-%m-%d" }}</span>
                        <a class="posts-list-name bubble-float-left" href="{{ site.url }}{{ post.url }}">{{ post.title }}</a>
                        <span class='circle'></span>
                    </div>
                </li>
                {% endif %}
            {% endfor %}
        </ul> 

        <!-- Pagination -->
        {% include pagination.html %}

       <!-- Comments -->
       <div class="comment">
         {% include comments.html %}
       </div>
    </div>

</div>
<script>
    $(document).ready(function(){

        // Enable bootstrap tooltip
        $("body").tooltip({ selector: '[data-toggle=tooltip]' });

    });
</script>