<?php
// Override any of the default settings below:
$config['site_title'] = 'Small Talks';			// Site title
$config['base_url'] = 'http://localhost/~redy/pico'; // Override base URL (e.g. http://example.com)
$config['theme'] = 'smalltalks'; 			// Set the theme (defaults to "default")
$config['date_format'] = 'jS M Y';		// Set the PHP date format

$config['pages_order_by'] = 'date';		// Order pages by "alpha" or "date"
$config['pages_order'] = 'asc';			// Order pages "asc" or "desc"
$config['excerpt_length'] = 50;			// The pages excerpt length (in words)
$config['singlepage'] = false;
// To add a custom config setting:
$config['appid'] = 'id....';
$config['exts_js'] = '{}';
$config['locale'] = 'en'; // Can be accessed by {{ config.locale }} define current language.
$config['translates'] = '{
	"en":{"name":"English", "text":"Language", "url":"http://smalltalks.cc"},
	"zh_CN":{"name":"简体中文", "text":"语 言", "url":"http://cn.smalltalks.cc"}
}'; 
$config['taxonomy'] = '{"tag":"Tag", "category":"Category"}'; // {{ config.taxonomy }} in a theme, as a JSON object. use those terms intro page's .md file as meta.

$config['custom_metas'] = '{"link":"Link","pic":"Picture","copyright":"Copyright"}'; //{{ config.content_metas }} custom metas for display additional contents on page.

$config['thumbnail_ext']='jpg';
$config['templates'] = '{"index":"Default"}';

$config['site_description'] = 'Small Talks. Audio and Video Chat. We have recreated the experience of audio and video chatting. Now it’s much easier for you to chat with friends or family members on mobile devices.';

$config['site_copyright'] ='&copy; 2014 Skytech Co., Ltd.';
$config['site_license'] ='';
?>
