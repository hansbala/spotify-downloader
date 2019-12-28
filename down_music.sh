#!/bin/sh

# Downloads a playlist to a specified directory
# Params:
# $1 : PLAYLIST URL (Spotify URL to be downloaded)
# $2 : Download directory (Songs will be downloaded here)
# $3 : Text file name of list generated (Eg: vibe-desipunjabi.txt)
down_playlist () {
	mkdir -p $2
	spotdl --playlist $1
	spotdl --list $3 --trim-silence --overwrite skip --output-ext .mp3 --folder $2
}

# Download 80s (Pavan Bala)
DOWN_PATH_80s=~/Music/spotify_downloaded/80s
PLAYLIST_URL_80s="https://open.spotify.com/playlist/5e3Vtlz5wss9iw1NUuhDBk?si=Agd7NUVeQ8aa1z794576GQ"
down_playlist $PLAYLIST_URL_80s $DOWN_PATH_80s 80s051019.txt

# Download Current Music (Pavan Bala)
DOWN_PATH_CUR=~/Music/spotify_downloaded/Current
PLAYLIST_URL_CUR="https://open.spotify.com/playlist/63SEPrbTpOw1JDsSow5JJ9?si=KStIAeScQKqr5HFfcCS0Qw"
down_playlist $PLAYLIST_URL_CUR $DOWN_PATH_CUR current.txt

# Download Punjabi Music (Hans Bala)
DOWN_PATH_PUN=~/Music/spotify_downloaded/Punjabi
PLAYLIST_URL_PUN="https://open.spotify.com/playlist/1ECs6FISYU8I83aCIO122I?si=Otb8wJ-NSEydkDsuCI7C4w"
down_playlist $PLAYLIST_URL_PUN $DOWN_PATH_PUN vibe-desipunjabi.txt

# Download Chill Music (Hans Bala)
DOWN_PATH_CHI=~/Music/spotify_downloaded/Chill
PLAYLIST_URL_CHI="https://open.spotify.com/playlist/0XvQaO1z4JRJenLISnmuTG?si=p-kF4MN5QJeNkq5OAn4r1g"
down_playlist $PLAYLIST_URL_CHI $DOWN_PATH_CHI vibe-chillrelax.txt

clear
echo "Finished downloading all music :')"
echo "Pending transfer to external media"