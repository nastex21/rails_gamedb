/* $('h2').on('click', '.action', function() {
    //console.log("data", selectedHuddleIds());
    $.ajax('#{organize_process_path}', {
      data: selectedHuddleIds(),
      contentType: 'application/json',
      dataType: 'json'
    });
  });

  function selectedHuddleIds() {
    var ids = [], selected_cards = $('.card.selected');
    selected_cards.each(function() {
      ids.push( $(this).data('huddle-id') );
    })
    return JSON.stringify({ 'huddle_ids' : ids });
  } */

document.addEventListener("click", function (ev) {
  if (ev.target.id == "get_games_button") {
    console.log("it works");
  }
});
/* import { hello } from "./hello";

function greet_user(last_name, first_name) {
  hello(last_name + " " + first_name);
}
$(document).ready(function () {
  $("button#greet-user-button").on("click", function () {
    greet_user("Dire", "Strait");
  });
});
 */
