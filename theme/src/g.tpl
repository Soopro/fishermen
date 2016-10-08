<sup-set ng-model="g.ver"
         value="{{theme_meta.version}}"></sup-set>

<sup-set ng-model="g.default_logo"
         value="{{theme_url+'/styles/logo.png'}}"></sup-set>

<sup-set ng-model="g.default_featured_img"
         value="{{theme_url+'/styles/default_featured_img.png'}}"></sup-set>

<sup-set ng-model="g.default_thumbnail"
         value="{{theme_url+'/styles/default_thumbnail.png'}}"></sup-set>

<sup-set ng-model="g.default_series"
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
           }
         ]"></sup-set>
