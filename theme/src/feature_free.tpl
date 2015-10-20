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


<!-- Content Block -->
<article id="meta.alias" class="content-block">
  <div class="feature {{meta.background.class}}"
   sup-editor-widget-bg ng-model="meta.background"
   style="{{meta.background.style}}">
    <section class="container editor-free">
			<div sup-angular-wysiwyg ng-model="content"
       defualt="{{_('$_CONTENT')}}"></div>
    </section>
  </div>
</article>
<!-- #Content Block -->