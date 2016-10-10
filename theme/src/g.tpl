<sup-set ng-model="g.ver"
         value="{{theme_meta.version}}"></sup-set>

<sup-set ng-model="g.default_logo"
         value="{{theme_url+'/styles/logo.png'}}"></sup-set>

<sup-set ng-model="g.default_featured_img"
         value="{{theme_url+'/styles/default_featured_img.png'}}"></sup-set>

<sup-set ng-model="g.default_thumbnail"
         value="{{theme_url+'/styles/default_thumbnail.png'}}"></sup-set>

<sup-set ng-model="g.img_holder"
         value="{{libs_url+'/styles/trans.png'}}"></sup-set>

<sup-set ng-model="g.default_features"
         object="[
           {
             'title': _('Item Title'),
             'caption': _('Click here to edit series item.'),
             'src': theme_url+'/styles/default_thumbnail.png'
           },
           {
             'title': _('Item Title'),
             'caption': _('Click here to edit series item.'),
             'src': theme_url+'/styles/default_thumbnail.png'
           },
           {
             'title': _('Item Title'),
             'caption': _('Click here to edit series item.'),
             'src': theme_url+'/styles/default_thumbnail.png'
           }
         ]"></sup-set>

<sup-set ng-model="g.default_client"
         object="[
           {
             'title': _('Client Name'),
             'src': theme_url+'/styles/default_thumbnail.png'
           },
           {
             'title': _('Client Name'),
             'src': theme_url+'/styles/default_thumbnail.png'
           },
           {
             'title': _('Client Name'),
             'src': theme_url+'/styles/default_thumbnail.png'
           }
         ]"></sup-set>


<sup-set ng-model="g.additem"
         value="{{theme_url+'/styles/additem.png'}}"></sup-set>

<sup-set ng-model="g.default_products"
         object="[
           {
             'title': _('Apple iOS'),
             'src': theme_url+'/styles/app_badge_apple.png',
             'link': '#'
           },
           {
             'title': _('Google Play'),
             'src': theme_url+'/styles/app_badge_android.png',
             'link': '#'
           },
           {
             'title': _('Windows Phone'),
             'src': theme_url+'/styles/app_badge_wp.png',
             'link': '#'
           }
         ]"></sup-set>
