// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function delete_task(t) {
  $j('#' + t).fadeOut(1000, function() {
    $j(t).remove();
  });
}

function show_task(t) {
    url = '/tasks/'+t
    new Ajax.Updater('active_task', url,
    { method:'get',
      evalScripts: true
    });

}