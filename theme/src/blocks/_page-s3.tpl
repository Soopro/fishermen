<div class="container"
     sup-widget-open="page">
  <div class="row">
    <div class="col-md-12">
      <header class="text-center">
        <h2>{{page.title}}</h2>
      </header>
    </div>
    <div class="col-md-12">
      <div class="content textbox text-center"
           ng-bind-html="page.content">
      </div>
      <div class="imgbox">
        <img ng-src="{{page.featured_img.src || g.default_featured_img}}"
             alt="{{page.title}}"
             class="{{page.featured_img.class}}" />
      </div>
    </div>
  </div>
</div>
