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
              {{_('Languages')}} <span class="caret"></span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>
<!-- #Header -->
<!-- Main -->
<section id="main" data-offset="100">
      <div class="container">
          <div id="brand">
              <span class="logo"></span>
              <div ng-init="meta.title = meta.title || 'Small Talks'; meta.description = meta.description || 'Small Talks'">
				<h1 sup-editor-meta ng-model="meta.title">Small Talks</h1>
				<span sup-editor-meta class="des" ng-model="meta.description">Multiuser Video Chat</span>
			</div>
          </div>
		<div sup-angular-wysiwyg="sup-editor" ng-model="content">
			
            <div id="excerpt">
                <p>We have recreated the experience of audio and video chatting. Now it’s much easier for you to chat with friends or family members on mobile devices.</p>
            </div>
            <div id="store">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="flag"><span class="android"></span></div>
                    </div>
                    <div class="col-sm-4">
                        <div class="flag flag-online"><span class="apple"></span></div>
                    </div>
                    <div class="col-sm-4">
                        <div class="flag"><span class="wphone"></span></div>
                    </div>
                </div>
            </div>
            <div id="gofeatures">
                <a href="#features" class="btn-gofeatures parallaxlink">Features</a>
            </div>
			
		</div>
      </div>
</section>
<!-- #Main -->
<!-- Footer -->
<footer id="footer">
    <div class="container">
        <div class="copyright">
            <span>{{site_copyright}}</span>
			<small>{{site_license}}</small>
        </div>
    </div>
</footer>
<!-- #Footer -->