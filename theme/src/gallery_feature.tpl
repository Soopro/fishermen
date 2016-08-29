<sup-set ng-model="g.default_featured_img"
         value="{{theme_url+'/styles/default_featured_img.png'}}"></sup-set>
<sup-set ng-model="g.default_thumbnail"
         value="{{theme_url+'/styles/default_thumbnail.png'}}"></sup-set>

<!-- Webfonts -->
<link ng-href='{{theme_url}}/styles/fonts/lato.css'
      rel='stylesheet'
      type='text/css'>
<!-- Bootstrap core CSS -->
<link ng-href="{{theme_url}}/libs/bootstrap/bootstrap.min.css"
      rel='stylesheet'
      type='text/css'>
<!-- Styles-->
<link ng-href="{{theme_url}}/styles/style.css"
      rel='stylesheet'
      type='text/css'>

<div class="editor-gap-top"></div>
<!-- Content Block -->
<article id="{{meta.slug}}" class="content-block">
  <div class="feature {{meta.background.class}}"
       sup-widget-bg
       ng-model="meta.background"
       style="{{meta.background.style}}">
    <section class="container">
      <div class="row"
           sup-widget-collection
           ng-model="meta.gallery">
        <div class="col-sm-4 pointbox"
             ng-repeat="media in meta.gallery"
             ng-if="meta.gallery.length > 0">
          <h3 ng-if="media.title">{{media.title}}</h3>
          <p ng-if="media.caption">{{media.caption}}</p>
          <img class="{{media.class}}"
               ng-if="media.src"
               ng-src="{{media.src}}"
               alt="media" />
        </div>
        <div class="col-sm-4 pointbox"
             ng-repeat="media in [1,2,3]"
             ng-if="meta.gallery.length <= 0 || !meta.gallery">
          <h3>{{_('Title')}}</h3>
          <div class="caption">
            <p>{{_('$_CAPTION')}}</p>
          </div>
          <img ng-src="{{g.default_thumbnail}}" alt="media" />
        </div>
      </div>
    </section>
  </div>
</article>
<!-- #Content Block -->