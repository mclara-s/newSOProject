#include "playlist.h"

Playlist::Playlist()
{
}


Playlist::Playlist(QString nome)
{
    Name = nome;
}

Playlist::~Playlist()
{

}

void Playlist::setName(QString nome){
    Name = nome;
}

void Playlist::addMusic(Music musica){
    addMedia(musica.getMediaContent());
    AllMusicsList << musica;
    contentList << musica.getMediaContent();
    MusicTitles.insert(musica.getTitle(), musica);
}

bool Playlist::hasMusic(QString title){
    if (MusicTitles.contains(title))
        return true;
    else
        return false;
}

Music Playlist::getMusic(QString title){
    return MusicTitles.value(title);
}

QList<Music> Playlist::getAllMusicsList(){
    return AllMusicsList;
}

QList<QMediaContent> Playlist::getContentList(){
    return contentList;
}
