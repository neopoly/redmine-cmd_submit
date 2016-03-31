(function($) {
  "use strict";

  $(document).on("keydown", "form textarea", function(evt) {
    var $ui = $(this);
    if(evt.keyCode == 13 && (evt.metaKey || evt.ctrlKey)) {
      // mark changes of this textarea to be committed
      $ui.removeData("changed");
      // prevent the next change handler, which would mark this textarea
      // as "changed" again.
      $ui.one("change", function(evt) {
        evt.stopPropagation();
      });
      $ui.parents("form").submit();
    }
  });

})(jQuery);
