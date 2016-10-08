{% import 'g.tpl' %}
{% include '_css.tpl' %}

<div class="cover {{meta.hero.class}}"
     style="{{meta.hero.style}}"
     sup-widget-bg
     ng-model="meta.hero">
  <!-- Header -->
  {% include '_header.tpl' %}
  <!-- #Header -->
  <!-- Main -->
  <section id="{{meta.slug}}"
           class="main-section">
    <div class="container">
      <div class="brand">
        <div class="logo">
          <div sup-ico-pos="out top"
               sup-widget-media
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
          <div class="row">
            <div class="col-sm-4">
              <a class="flag"
                 ng-class="{'fade': !meta.app_android.link}"
                 href="#"
                 sup-widget-button
                 ng-model="meta.app_android">
                <span class="android"></span>
              </a>
            </div>
            <div class="col-sm-4">
              <a class="flag"
                 ng-class="{'fade': !meta.app_ios.link}"
                 href="#"
                 sup-widget-button
                 ng-model="meta.app_ios">
                <span class="apple"></span>
              </a>
            </div>
            <div class="col-sm-4">
              <a class="flag"
                 ng-class="{'fade': !meta.app_wp.link}"
                 href="#"
                 sup-widget-button
                 ng-model="meta.app_wp">
                <span class="wphone"></span>
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
</div>