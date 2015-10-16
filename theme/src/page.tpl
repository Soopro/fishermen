<!-- Webfonts -->
<link href='{{theme_url}}/font/webfonts.css?now={{ now }}' rel='stylesheet' type='text/css'>
<!-- Bootstrap core CSS -->
<link href="{{theme_url}}/lib/bootstrap/bootstrap.min.css?now={{ now }}" rel="stylesheet">
<!-- Styles-->
<link href="{{theme_url}}/css/style.css?now={{ now }}" rel="stylesheet">
<link ng-if="locale" ng-href="{{ theme_url }}/css/{{locale}}.css?now={{ now }}" rel="stylesheet" type='text/css'>
<link href="{{theme_url}}/css/editor.css?now={{ now }}" rel="stylesheet">
	<!-- Features -->
	<article id="features">
	    <!-- Feature Block -->
	    <div class="feature-block">
    	    <section class="container">
				<div sup-angular-wysiwyg="sup-editor" ng-model="content">
		            <div class="row">
		                <div class="col-sm-4 pointbox">
	                        <h3>Security and Privacy</h3>
	                        <img src="{{theme_url}}/store/ico_privacy.png" alt="Security and Privacy" />
		                </div>
		                <div class="col-sm-4 pointbox">
		                    <h3>Cross-platform</h3>
		                    <img src="{{theme_url}}/store/ico_platform.png" alt="Cross-platform" />
		                </div>
		                <div class="col-sm-4 pointbox">
		                    <h3>Simple, Fast, Reliable</h3>
		                    <img src="{{theme_url}}/store/ico_lighting.png" alt="Simple, Fast, Reliable" />
		                </div>
		            </div>
				</div>
    	    </section>
	    </div>
	    <!-- #Feature Block -->
	</article>
	<!-- #Features -->