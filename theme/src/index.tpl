{% import 'g.tpl' %}
{% include '_css.tpl' %}


<!-- Header -->
{% include '_header.tpl' %}
<!-- #Header -->
<!-- Main -->
<section id="{{meta.slug}}" class="main-section">
  <div sup-widget-bg
       ng-model="meta.hero"></div>
  <div class="container">
    <div class="brand">
      <div class="logo">
        <div sup-widget-media
             ng-model="meta.logo">
          <img ng-src="{{meta.logo.src || site_meta.logo || g.default_logo}}"
               alt="{{site_meta.title}}" />
        </div>
      </div>
      <h1>
        <span sup-widget-text
              ng-model="meta.title"
              default="{{_('Title')}}"></span>
      </h1>
      <h2>
        <span sup-widget-text
              ng-model="meta.subtitle"
              default="{{_('Subtitle text here')}}"></span>
      </h2>
    </div>
    <div class="get-link"
         sup-widget-option
         ng-model="meta.mailto"

         structure="[
           {'key': 'address', 'label': _('Email Address'),
            'default': 'your@email.here'},

           {'key': 'subject', 'label': _('Email Subject'),
            'default': _('Email subject here')},

           {'key': 'btntext', 'label':_('Button Text'),
            'default': _('Get Link')},
         ]">

      <form action="#">
        <input type="hidden" name="subject" value="{{meta.mailto.subject}}">
        <div class="form-group row">
          <div class="col-sm-8">
            <!-- email -->
            <input type="email"
                   name="email"
                   placeholder="{{_('Email Address here')}}"
                   class="form-control email">
             <!-- #email -->
          </div>
          <div class="col-sm-4">
            <button class="btn btn-primary btn-block">
              {{meta.mailto.btntext}}
            </button>
          </div>
        </div>
      </form>
    </div>

    <div>
      <div class="excerpt">
        <p>
          <span sup-widget-text
                ng-model="meta.description"
                default="{{_('Description text here')}}"></span>
        </p>
      </div>
      <div class="store">
        <div class="row"
             sup-widget-series
             default="{{g.default_products}}"
             limit="3"
             ng-model="meta.products">
          <div class="col-sm-4
                      {{meta.products.length < 2 ? 'col-sm-offset-2' : ''}}"
               ng-repeat="prd in (meta.products|limitTo:3)">
            <a class="flag {{prd.class}}"
               series-item
               href="#">
              <img ng-src="{{g.app_holder}}"
                   style="{{prd.src|bg_img:g.default_img}}" />
            </a>
          </div>
          <div class="col-sm-4
                      {{meta.products.length < 1?'col-sm-offset-4':''}}">
            <a class="flag"
               series-item-create
               href="#">
              <img ng-src="{{g.additem}}"></span>
            </a>
          </div>
        </div>
      </div>
      <div class="learn-more">
        <a href="#"
           class="btn-more">
          {{_('Learn More')}}
        </a>
      </div>
		</div>
  </div>
</section>
<!-- #Main -->
<div sup-widget-segments ng-model="segments">
  <section ng-repeat="page in segments"
           ng-if="page.template != meta.template"
           id="{{page.slug}}"
           class="content-block {{page.bg.class}}"
           style="{{page.bg.style}}">

  	<!-- Section Blocks -->
    <div ng-if="page.template == 'page'">
      {% include "blocks/_page.tpl" %}
    </div>
    <div ng-if="page.template == 'page-s1'">
      {% include "blocks/_page-s1.tpl" %}
    </div>
    <div ng-if="page.template == 'page-s2'">
      {% include "blocks/_page-s2.tpl" %}
    </div>
    <div ng-if="page.template == 'page-s3'">
      {% include "blocks/_page-s3.tpl" %}
    </div>
    <div ng-if="page.template == 'features'">
      {% include "blocks/_features.tpl" %}
    </div>
    <div ng-if="page.template == 'clients'">
      {% include "blocks/_clients.tpl" %}
    </div>
  	<!-- #Section Blocks -->

  </section>
  <section class="content-block last">
    <div>
      <div class="container">
        <div segment-create="major"></div>
      </div>
    </div>
  </section>
</div>

{% include "_footer.tpl" %}

<div class="cover {{meta.hero.class}}"
     style="{{meta.hero.style}}"></div>