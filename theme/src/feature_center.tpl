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
<article id="meta.alias" class="content-block">
  <div class="feature">
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
          <div class="sup-widget media">
          	<img sup-editor-widget="media" ng-model="meta.featured_img" />
          </div>
        </div>
      </section>
    </div>
  </div>
</article>
<!-- #Content Block -->