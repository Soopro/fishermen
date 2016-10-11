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
           default="{{g.default_clients}}"
           limit="4"
           ng-model="meta.series">

        <div class="col-sm-3 item {{item.class}}"
             ng-repeat="item in meta.series"
             sup-widget-series-item>
          <a href="#">
            <img src="{{g.img_holder}}"
                 class="img-holder"
                 style="{{item.src|bg_img(g.default_thumbnail)}}"/>
          </a>
        </div>
        <div class="col-sm-3 item"
             sup-widget-series-item="new">
          <a href="#">
            <img src="{{g.img_holder}}"
                 class="img-holder"
                 style="{{g.default_thumbnail|bg_img}}">
          </a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- #Content Block -->