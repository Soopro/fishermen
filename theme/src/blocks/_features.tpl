<div class="container"
     sup-widget-open="page">
  <div class="row">
    <div class="col-sm-3 text-center feature {{item.class}}"
         ng-repeat="item in page.series">
      <figure>
        <img ng-src="{{g.img_holder}}"
             class="img-holder"
             style="{{item.src|bg_img}}">
      </figure>
      <h3 class="text-nowrap">{{item.title}}</h3>
      <p class="text-clamp-3 caption"
         ng-bind-html="item.caption">
      </p>
    </div>
  </div>
</div>