{% import 'g.tpl' %}
{% include '_css.tpl' %}

<!-- Header -->
{% include '_header.tpl' %}
<!-- #Header -->

<div class="editor-gap-top"></div>
<!-- Content Block -->
<article id="{{meta.slug}}"
         class="content-block">
  <div class="page {{meta.bg.preset}} {{meta.bg.class}}"
       sup-widget-bg
       ng-model="meta.bg"
       style="{{meta.bg.style}}">
    <section class="container">
			<div class="row"
           sup-widget-series
           default="{{g.default_features}}"
           limit="4"
           ng-model="meta.series">

        <div class="col-sm-4"
             sup-widget-series-item
             ng-repeat="item in meta.series">
          <figure>
            <img src="{{g.img_holder}}"
                 class="img-holder"
                 style="{{item.src|bg_img(g.default_thumbnail)}}">
          </figure>
          <h3>{{item.title}}</h3>
          <div>
            <p>{{item.caption}}</p>
          </div>
        </div>

        <div class="col-sm-4"
             sup-widget-series-item="new">
          <figure>
            <img ng-src="{{g.default_thumbnail}}">
          </figure>
          <h3>{{_('Add New Item')}}</h3>
          <div>
            <p>{{_('Click here to add a series content.')}}</p>
          </div>
        </div>

      </div>
    </section>
  </div>
</article>
<!-- #Content Block -->