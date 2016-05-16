<sup-set ng-model="g.default_featured_img"
         value="{{theme_url+'/styles/default_featured_img.png'}}"></sup-set>

<!-- Webfonts -->
<link ng-href='{{theme_url}}/styles/fonts/lato.css'
 rel='stylesheet' type='text/css'>
<!-- Bootstrap core CSS -->
<link ng-href="{{theme_url}}/libs/bootstrap/bootstrap.min.css"
 rel='stylesheet' type='text/css'>
<!-- Styles-->
<link ng-href="{{theme_url}}/styles/style.css"
 rel='stylesheet' type='text/css'>

<div class="editor-gap-top"></div>
<!-- Content Block -->
<article id="{{meta.slug}}" class="content-block">
  <div class="feature {{meta.background.class}}"
   sup-editor-widget-bg ng-model="meta.background"
   style="{{meta.background.style}}">
    <section class="container">
      <div class="row">
        <div class="col-md-12">
          <header class="center">
            <h2 sup-editor-meta ng-model="meta.title"
             default="{{_('Title')}}"></h2>
          </header>
        </div>
        <div class="col-md-6 pull-right textbox">
          <div sup-angular-wysiwyg ng-model="content"
           default="{{_('$_CONTENT')}}"></div>
        </div>
        <div class="col-md-6 pull-left imgbox">
          <span sup-editor-media ng-model="meta.featured_img">
            <img ng-src="{{meta.featured_img.src || g.default_featured_img}}"
             class="{{meta.featured_img.class}}"/>
          </span>
        </div>
      </div>
    </section>
  </div>
</article>
<!-- #Content Block -->