$(function() {

  var mutex = false;

  $('#add_task').click(function() {
    
    if (!mutex) {
      mutex = true;

      var counter = $('.task_container').length;
      $.ajax({
        type: "GET",
        url: '/projects/add_task',
        data: {
          counter: counter
        },
        success: function(html) {
          mutex = false;
          $('#tasks').append(html);
        }
      });
    }

    return false;
  });

  $('.delete_task').livequery('click', function() {
    var idParts = $(this).attr('id').split('_');
    var counter = idParts.pop();

    var sectionName = 'task';
    var fields = $('#' + sectionName + '_fields_' + counter);
    var deleteCheckbox = $('#project_' + sectionName + 's_attributes_' + counter + '__delete');
    if (deleteCheckbox.val() == '0') {
      deleteCheckbox.val('1');
      fields.hide();
    } else {
      deleteCheckbox.val('0');
      fields.show();
    }

    return false;
  });

});
