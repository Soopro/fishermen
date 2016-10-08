{% import 'g.tpl' %}
{% include '_css.tpl' %}

<!-- Header -->
{% include '_header.tpl' %}
<!-- #Header -->

<div class="editor-gap-top"></div>
<!-- Content Block -->
<article id="{{meta.slug}}"
         class="content-block">
  <div class="page {{meta.bg.class}}"
       sup-widget-bg
       ng-model="meta.bg"
       style="{{meta.bg.style}}">
    <section class="container">
      <div class="row">
        <div class="col-md-12">
          <header class="text-center">
            <h2 sup-widget-text ng-model="meta.title"
             default="{{_('Title')}}"></h2>
          </header>
        </div>
        <div class="col-md-6 pull-right textbox">
          <div sup-angular-wysiwyg ng-model="content"
           default="{{_('$_CONTENT')}}"></div>
        </div>
        <div class="col-md-6 pull-left imgbox">
          <span sup-widget-media ng-model="meta.featured_img">
            <img ng-src="{{meta.featured_img.src || g.default_featured_img}}"
             class="{{meta.featured_img.class}}"/>
          </span>
        </div>
      </div>
    </section>
  </div>
</article>
<!-- #Content Block -->