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
		    <div class="container">
		        <section class="row">
		            <div class="col-md-12">
		                <header class="center">
		                    <h2 sup-editor-meta ng-model="meta.title">Free Voice Call</h2>
		                </header>
		            </div>
		            <div class="col-md-6 pull-right textbox">
						<div sup-angular-wysiwyg="sup-editor" ng-model="content">
	                    	<p>By using Small Talks, you can make extremely high quality voice calls to your buddies. Our push notifications guarantee that you never miss a call, even when Small Talks isn’t active. It is completely reliable, and free of charge.</p>
						</div>
		            </div>
		            <div class="col-md-6 pull-left imgbox">
						<div class="sup-widget media">
		                	<img alt="{{meta.title}}" sup-editor-widget="media" ng-model="meta.picture" />
						</div>
		            </div>
		        </section>
		    </div>
		</div>
	    <!-- #Feature Block -->
	</article>
	<!-- #Features -->