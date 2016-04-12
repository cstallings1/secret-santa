$(function() {
  $("#add-names").on("click", function(){
    $(".drawing-form").append(
      "<div> \
        <input placeholder='your name' type='text' name='drawing[user_name]' id='drawing_name'> \
        <input placeholder='your spouse' type='text' name='drawing[user_spouse]' id='drawing_spouse'> \
      </div>"
      );
  });

  $("#generate-list-button").on("click", function(e) {
    e.preventDefault();
    var drawingId;
    var formData = $(".drawing-form").serialize();

    $.ajax({
      method: "POST",
      url: "/drawings",
      data: formData
    })
    .done(function(response) {

    })
    .error(function(response) {

    });
  })
});








