<script type="text/javascript">
    jq.expr[':'].external  = function(obj) {
      return !obj.href.match(/^mailto:/) && !obj.href.match(/^javascript:/) && (obj.hostname != document.location.hostname);
    };
    jq(function() {
        jq('a:external').click(function(){
          _gaq.push(['_trackEvent', 'External', 'Link', jq(this).attr('href'), '${relative_url}']);
        });
    });
</script>