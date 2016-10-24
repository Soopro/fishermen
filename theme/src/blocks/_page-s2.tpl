<div class="container" segment>
  <div class="row">
    <div class="col-md-6 pull-left textbox aside">
      <header>
        <h2>{{page.title}}</h2>
      </header>
      <div class="content"
           ng-bind-html="page.content">
      </div>
    </div>
    <div class="col-md-6 pull-right imgbox">
      <img ng-src="{{page.featured_img.src || g.default_featured_img}}"
           alt="{{page.featured_img.title}}"
           class="{{page.featured_img.class}}"/>
    </div>
  </div>
</div>