{% import 'g.tpl' %}
{% include '_css.tpl' %}

<!-- Header -->
{% include '_header.tpl' %}
<!-- #Header -->

<div class="editor-gap-top"></div>
<!-- Content Block -->
<article id="{{meta.slug}}" class="content-block">
  <div class="feature {{meta.background.class}}"
   sup-widget-bg ng-model="meta.background"
   style="{{meta.background.style}}">
    <section class="container">
      <div class="row">
        <div class="col-md-6 pull-right textbox">
          <header>
            <h2 sup-widget-text ng-model="meta.title"
             default="{{_('Title')}}"></h2>
          </header>
          <div sup-angular-wysiwyg ng-model="content"
           default="{{_('$_CONTENT')}}"></div>
        </div>
        <div class="col-md-6 pull-left imgbox">
          <div sup-widget-media ng-model="meta.featured_img">
            <img ng-src="{{meta.featured_img.src || g.default_featured_img}}"
             class="{{meta.featured_img.class}}"/>
          </div>
        </div>
      </div>
    </section>
	</div>
</article>
<!-- #Content Block -->