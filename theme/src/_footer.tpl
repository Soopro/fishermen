<!-- Footer -->
<footer class="footer">
  <div class="container">
    <div class="shareto"
         ng-hide="socials|is_empty">
      <div ng-repeat="social in socials"
           ng-bind-html="social.code">
      </div>
    </div>
    <div class="copyright">
      <span ng-bind-html="site_meta.copyright||_('$_COPY')"></span>
		  <span ng-bind-html="site_meta.license"></span>
    </div>
  </div>
</footer>
<!-- #Footer -->
