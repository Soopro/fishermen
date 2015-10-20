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
<link ng-href="{{theme_url}}/styles/editor.css"
 rel="stylesheet" type='text/css'>
 

<!-- Content Block -->
<sup-set ng-model="bg_img"
         value="{{background.src?'background-image:url('+
         background.src+')':'';}}"></sup-set>
         
<sup-set ng-model="bg_color"
         value="{{background.color?'background-color:'+
         background.color :'';}}"></sup-set>

<sup-set ng-model="bg_repeat"
         value="{{background.repeat?'background-repeat:'+
         background.repeat :'';}}"></sup-set>

<article id="meta.alias" class="content-block">
  <div class="feature {{meta.background.class || ''}}"
   sup-editor-widget-bg ng-model="meta.background"
   ng-style="{{bg_img+bg_color+bg_repeat}}">
    <div class="container">
      <section class="row">
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
             class="{{meta.featured_img.class || ''}}"/>
          </span>
        </div>
      </section>
    </div>
  </div>
</article>
<!-- #Content Block -->