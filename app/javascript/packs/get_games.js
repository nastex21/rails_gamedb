document.addEventListener("click", function (ev) {

    var url = "https://rawg-video-games-database.p.rapidapi.com/games?search=Mario&page_size=10";
    if (ev.target.id == "get_games_button") {
        const settings = {
            "async": true,
            "crossDomain": true,
            "url": url,
            "method": "GET",
            "contentType": 'application/json',
            "dataType": 'json',
            "headers": {
                "x-rapidapi-key": process.env.RAPID_KEY,
                "x-rapidapi-host": "rawg-video-games-database.p.rapidapi.com"
            }
        };
        
        $.ajax(settings).done(function (response) {
            console.log(response);
        });
    }
})