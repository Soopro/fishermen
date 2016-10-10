<div class="page {{page.bg.preset}} {{page.bg.class}}"
     style="{{page.bg.style}}">
  <section class="container"
           sup-widget-open="page">
    <div class="row">
      <div class="col-md-12 imgbox">
        <img ng-src="{{page.featured_img.src || g.default_featured_img}}"
             alt="{{page.featured_img.title}}" />
      </div>
      <div class="col-md-8 col-md-offset-2 textbox">
        <header class="text-center">
          <h2>{{page.title}}</h2>
        </header>
        <div class="content text-center">
          {{page.content}}
        </div>
      </div>
    </div>
  </section>
</div>