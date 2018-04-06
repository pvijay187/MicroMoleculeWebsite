function getLyrics(event) {
    let artist = document.getElementById("artist").value;
    let title = document.getElementById("title").value;

    // Call API
    fetch(`https://api.lyrics.ovh/v1/${artist}/${title}`)
        .then((response) => response.json())
        .then((json) => {

            let lyrics = json.lyrics;


            document.getElementById("displayLyrics").innerText = lyrics;
        });

    }
    document.getElementById("lyrics").addEventListener("click", getLyrics);
