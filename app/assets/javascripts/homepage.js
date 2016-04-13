$(function() {
  $("#add-names").on("click", function(){
    $(".drawing-form").append(
      "<div> \
        <input placeholder='your name' type='text' name='participant[name]' id='participant_name'> \
        <input placeholder='your spouse' type='text' name='participant[spouse]' id='participant_spouse'> \
      </div>"
      );
  });

  $("#create-list-button").on("click", function(e) {
    e.preventDefault();
    var drawingId = $("input[name='participant[drawing_id]']").val();
    var formData = $(".drawing-form").serialize();

    $.ajax({
      method: "POST",
      url: "/drawings/" + drawingId + "/participants",
      data: formData
    })
    .done(function(response) {

    })
    .error(function(response) {

    });
  })
});








