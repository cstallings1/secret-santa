$(function() {
  $("#add-names").on("click", function(){
    $(".drawing-form").append(
      "<div> \
        <input placeholder='your name' type='text' name='participant[name]' id='participant_name'> \
        <input placeholder='your spouse' type='text' name='participant[spouse]' id='participant_spouse'> \
      </div>"
      );
  });
});








