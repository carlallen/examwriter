$("[show_block]").live "click", (event) ->
  $($(this).attr("show_block")).show();
$("[hide_block]").live "click", (event) ->
  $($(this).attr("hide_block")).hide();