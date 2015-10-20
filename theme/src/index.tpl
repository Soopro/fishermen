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


<!-- Header -->
<header id="masthead">
  <nav class="container nav-primary">
    <div class="navbar">
      <div class="navbar-header">
       <button type="button" class="navbar-toggle">
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
       </button>
      </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li ng-repeat="nav in menu.primary">
            <a href="#" fake>{{nav.title}}</a>
          </li>
          <li ng-if="translates">
            <a href="#" class="language">
              <span>{{_('Languages')}}</span> <span class="caret"></span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>
<!-- #Header -->
<!-- Main -->
<section id="main">
  <div class="container">
    <div id="brand">
      <div class="logo" sup-editor-media ng-model="meta.logo">
        <img src="{{meta.logo || site_meta.logo || g.default_logo}}"
         alt="{{site_meta.title}}" />
      </div>
      <h1 sup-editor-meta ng-model="meta.title"
       default="{{_('Title')}}"></h1>
      <h2 sup-editor-meta ng-model="meta.subtitle"
       default="{{_('Description text here')}}"></h2>
    </div>
    <div id="get-link" sup-editor-widget-script ng-model="meta.form">
      <form action="mailto:mail@youremail.com" sup-mailform>
        <input type="hidden" name="subject" value="Get&nbsp;Fisherman">
        <input type="hidden" name="message" value="I want get a Fisherman">
        <div class="form-group row">
          <div class="col-sm-8">
            <!-- Phone Number -->
            <input id="phone" type="text" name="phone" title="Phone:"
             placeholder="Phone number"
             class="form-control phone-number">
            <!-- #Phone Number -->
          </div>
          <div class="col-sm-4">
            <button class="btn btn-primary btn-block">
              {{_("Get Link")}}
            </button>
          </div>
        </div>
      </form>
    </div>
    <div sup-editor-meta="sup-editor" ng-model="content">	
      <div id="excerpt">
        <p sup-editor-meta ng-model="meta.description"
         default="{{_('Description text here)}}"></p>
      </div>
      <div id="store">
        <div class="row">
          <div class="col-sm-4">
            <a href="{{meta.app_android.link || '#'}}" class="flag"
             sup-editor-widget-button ng-model="meta.app_android">
              <span class="android"></span>
            </a>
          </div>
          <div class="col-sm-4">
            <a href="{{meta.app_ios.link || '#'}}" class="flag"
             sup-editor-widget-button ng-model="meta.app_ios">
              <span class="apple"></span>
            </a>
          </div>
          <div class="col-sm-4">
            <a href="{{meta.app_wp.link || '#'}}" class="flag"
             sup-editor-widget-button ng-model="meta.app_wp">
              <span class="wphone"></span>
            </a>
          </div>
        </div>
      </div>
      <div id="gofeatures">
        <a href="#" class="btn-gofeatures">
          {{_('Features')}}
        </a>
      </div>
		</div>
  </div>
</section>
<!-- #Main -->