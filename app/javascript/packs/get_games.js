document.addEventListener("click", function (ev) {
        
    if (ev.target.id == "get_games_button") {

        const form = document.querySelector('#search_games');
        const data = Object.fromEntries(new FormData(form).entries());

        var url = `https://rawg-video-games-database.p.rapidapi.com/games?search=${data.game}&page_size=10`;

        console.log(url);

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