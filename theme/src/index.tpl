{% import 'g.tpl' %}
{% include '_css.tpl' %}


<!-- Header -->
{% include '_header.tpl' %}
<!-- #Header -->
<!-- Main -->
<section id="{{meta.slug}}"
         class="main-section">
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
           {'key': 'action', 'label': _('Action'),
            'default': _('mailto:your@email.here')},

           {'key': 'subject', 'label': _('Subject'),
            'default': _('Subject here.')},

           {'key': 'btntext', 'label':_('Button Text'),
            'default': _('Get Link')},
         ]">

      <form action="{{meta.mailto.aciton}}">
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
                      {{meta.products.length<2?'col-sm-offset-2':''}}"
               ng-repeat="prd in (meta.products|limitTo:3)">
            <a class="flag {{prd.class}}"
               sup-widget-series-item
               href="#">
              <img ng-src="{{prd.src|thumbnail}}"></span>
            </a>
          </div>
          <div class="col-sm-4
                      {{meta.products.length<1?'col-sm-offset-4':''}}">
            <a class="flag"
               sup-widget-series-item="new"
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
<div sup-query="page"
     ng-model="query.page"
     with-content="true"></div>
<section ng-repeat="page in query.page.contents"
         ng-if="page.template != meta.template"
         id="{{page.slug}}"
         class="content-block">
	<!-- Section Block -->
  <div ng-if="page.template == 'page'">
    {% include "blocks/_page.tpl" %}
  </div>
  <div ng-if="page.template == 'page-s1'">
    {% include "blocks/_page-s1.tpl" %}
  </div>
	<!-- #Section Block -->
</section>

<div class="cover {{meta.hero.class}}"
     style="{{meta.hero.style}}"></div>