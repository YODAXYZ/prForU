(function(){
  $("#submit").click(function(e){
    $(".form").click(function(e){
      $('.red_line').html("");
      // Initializing Variables With Form Element Values
      var fno = $('#fno').val();
      var place = $('#place').val();
      var phone = $('#phone').val();
      var email = $('#email').val();
      var facebook = $('#facebook').val();
       // Initializing Variables With Regular Expressions
      var email_regex = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
      var telephone_regex = /(8[0-9]+)|(\+7[0-9]+)/;

      function isValidHttpUrl(string) {
        let url;

        try {
          url = new URL(string);
        } catch (_) {
          return false;  
        }

        return url.protocol === "http:" || url.protocol === "https:";
      }

      
      var error_message = true;

      if(fno.length < 6){
        $('#fno_error').text("* Вы ввели некорректное Ф.И.О *");
        error_message = false;
      }

      if(place.length < 2) {
        $('#place_error').text("* Вы ввели некорректный район *");
        error_message = false;
      }

      if(!phone.match(telephone_regex) || phone.length < 10) {
        $('#phone_error').text("* Вы ввели некорректный телефон *");
        error_message = false;
      }

      if(!email.match(email_regex)) {
        $('#email_error').text("* Вы ввели некореектный email. @ + . *");
        error_message = false;
      }
      if(!isValidHttpUrl(facebook)) {
        $('#facebook_error').text('* Вы ввели некоректную ссылку *');
        error_message = false;
      }
      // if (error_message) {
      //   $("#submit").click(function() {
      //     swal({
      //       title: "Good job!",
      //       text: "You clicked the button!",
      //       icon: "success",
      //       button: "Aww yiss!",
      //     });
      //     $("#myform").attr('action', 'registration.php');
      //   });
      // }
      if (!error_message) {
        return false;
      }
      
  });
  
});
})();
