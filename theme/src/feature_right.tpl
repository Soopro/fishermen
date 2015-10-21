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
<article id="meta.alias" class="content-block">
  <div class="feature {{meta.background.class}}"
   sup-editor-widget-bg ng-model="meta.background"
   style="{{meta.background.style}}">
    <section class="container">
      <div class="row">
        <div class="col-md-6 pull-left textbox">
          <header>
            <h2 sup-editor-meta ng-model="meta.title"
             default="{{_('Title')}}"></h2>
          </header>
          <div sup-angular-wysiwyg ng-model="content"
           default="{{_('$_CONTENT')}}"></div>
        </div>
        <div class="col-md-6 pull-right imgbox">
          <div sup-editor-media ng-model="meta.featured_img">
            <img ng-src="{{meta.featured_img.src || g.default_featured_img}}"
             class="{{meta.featured_img.class}}"/>
          </div>
        </div>
      </div>
    </section>
  </div>
</article>
<!-- Content Block -->