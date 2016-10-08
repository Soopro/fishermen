{% import 'g.tpl' %}
{% include '_css.tpl' %}

<!-- Header -->
{% include '_header.tpl' %}
<!-- #Header -->

<div class="editor-gap-top"></div>
<!-- Content Block -->
<article id="{{meta.slug}}"
         class="content-block">
  <div class="page {{meta.background.class}}"
       sup-widget-bg
       ng-model="meta.background"
       style="{{meta.background.style}}">
    <section class="container">
			<div sup-widget-series
           default="{{g.default_series}}"
           limit="3"
           ng-model="meta.series">
        <div class="row">

          <div class="col-sm-4 pointbox"
               sup-widget-series-item
               ng-repeat="item in meta.series">
            <figure>
              <img ng-src="{{item.type == 'image' ? item.src :
                             g.default_thumbnail}}">
            </figure>
            <h3>{{_('Item Title')}}</h3>
            <div>
              <p>{{_('Click here to edit series item.')}}</p>
            </div>
          </div>

          <div class="col-sm-4 pointbox"
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
      </div>
    </section>
  </div>
</article>
<!-- #Content Block -->