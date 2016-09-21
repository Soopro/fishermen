{% import 'g.tpl' %}
{% include '_css.tpl' %}

<div class="cover {{meta.hero.class}}"
     style="{{meta.hero.style}}"
     sup-widget-bg
     ng-model="meta.hero">
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
              <a href="#" class="parallax-link {{nav.meta.class}}">
                {{nav.title}}
              </a>
            </li>
            <li ng-if="translates">
              <a href="#" class="language">
                <span class="language-switcher-text">
                  {{_('Languages')}}
                </span>&nbsp;<span class="caret"></span>
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
      <div id="get-link"
           sup-widget-option
           ng-model="meta.mailto"

           structure="[
             {'key': 'email', 'label': _('Email')},

             {'key': 'subject', 'label': _('Subject'),
              'default': _('Subject text here.')},

             {'key': 'message', 'label': _('Message'),
              'default': _('Message text here.')},

             {'key': 'btntext', 'label':_('Button Text'),
              'default': _('Get Link')},
           ]">

        <form action="{{meta.mailto.email}}">
          <input type="hidden" name="subject" value="{{meta.mailto.subject}}">
          <input type="hidden" name="message" value="{{meta.mailto.message}}">
          <div class="form-group row">
            <div class="col-sm-8">
              <!-- email -->
              <input id="email"
                     type="email"
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
        <div id="excerpt">
          <p>
            <span sup-widget-text
                  ng-model="meta.description"
                  default="{{_('Description text here')}}"></span>
          </p>
        </div>
        <div id="store">
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
        <div id="gofeatures">
          <a href="#"
             class="btn-gofeatures">
            {{_('Features')}}
          </a>
        </div>
  		</div>
    </div>
  </section>
  <!-- #Main -->
</div>