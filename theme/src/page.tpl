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
  <div class="page">
	  <section class="container">
      <div class="row">
        <div class="col-md-12 imgbox">
          <img src="{{meta.featured_img.src || g.default_featured_img}}" />
        </div>
        <div class="col-md-12 textbox">
          <header>
            <h2 sup-editor-meta ng-model="meta.title"
             default="{{_('Title')}}"></h2>
          </header>
          <div class="content" sup-angular-wysiwyg ng-model="content"
           default="{{_('$_CONTENT')}}">
            {{page.content}}
          </div>
        </div>
      </div>
	  </section>
  </div>
</article>
<!-- #Content Block -->