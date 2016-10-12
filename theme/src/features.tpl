{% import 'g.tpl' %}
{% include '_css.tpl' %}


<div class="editor-gap-top"></div>
<!-- Content Block -->
<section id="{{meta.slug}}"
         class="content-block {{meta.bg.class}}"
         style="{{meta.bg.style}}">
  <div sup-widget-bg
       ng-model="meta.bg"></div>
  <div>
    <div class="container">
  		<div class="row"
           sup-widget-series
           default="{{g.default_features}}"
           limit="4"
           ng-model="meta.series">

        <div class="col-sm-3 text-center feature {{item.class}}"
             ng-repeat="item in meta.series">
          <div sup-widget-series-item>
            <figure>
              <img ng-src="{{g.img_holder}}"
                   class="img-holder"
                   style="{{item.src|bg_img:g.default_thumbnail}}">
            </figure>
            <h3 class="text-nowrap">{{item.title}}</h3>
            <p class="text-clamp-3 caption">{{item.caption}}</p>
          </div>
        </div>

        <div class="col-sm-3 text-center feature">
          <div sup-widget-series-item="new">
            <figure>
              <img ng-src="{{g.img_holder}}"
                   class="img-holder"
                   style="{{g.default_thumbnail|bg_img}}">
            </figure>
            <h3 class="text-nowrap">{{_('Add New Item')}}</h3>
            <p class="text-clamp-3 caption"
               ng-bind-html="_('Click here to add a series item.')">
            </p>
          </div>
        </div>

      </div>
    </div>
  </div>
</section>
<!-- #Content Block -->