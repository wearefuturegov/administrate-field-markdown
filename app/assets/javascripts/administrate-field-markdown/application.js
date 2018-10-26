//= require simplemde/dist/simplemde.min.js

$('.markdown-field').each(function() {
  var options = jQuery.extend({element: this, forceSync: true}, $(this).data('simplemde-options'))
  const simplemde = new SimpleMDE(options);
});
