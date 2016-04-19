$(function() {
  $("#add-names").on("click", function(){
    $(".actions").prepend(
      "<div class='field'> \
        <input placeholder='your name' type='text' name='participants[][name]' id='participants__name'> \
        <input placeholder='your spouse' type='text' name='participants[][spouse]' id='participants__spouse'> \
        <input value='48' type='hidden' name='participants[][drawing_id]' id='participants__drawing_id'> \
      </div>"
      );
  });
});











