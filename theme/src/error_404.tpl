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
<article class="content-block error-404">
  <div class="page">
    <section class="container">
      <div class="row">
        <div class="col-md-12 textbox">
          <header>
            <h2 sup-editor-meta ng-model="meta.title"
             default="{{_('Error 404')}}"></h2>
          </header>
          <div class="content" sup-angular-wysiwyg ng-model="content"
           default="{{_('$_ERROR404')}}"></div>
        </div>
      </div>
    </section>
  </div>
</article>
<!-- #Content Block -->