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
  <div class="feature {{meta.background.class}}"
   sup-editor-widget-bg ng-model="meta.background"
   ng-style="{{bg_img+bg_color+bg_repeat}}">
    <section class="container">
			<div sup-angular-wysiwyg ng-model="content"
       defualt="{{_('$_CONTENT')}}"></div>
    </section>
  </div>
</article>
<!-- #Content Block -->