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
    musicList << musica;
}

QHash<QString, QString> Playlist::getMusicInfo(int i){
    QHash<QString, QString> musicInfo;
    musicInfo.insert("Artista", musicList[i].getArtist());
    musicInfo.insert("Titulo", musicList[i].getTitle());
    musicInfo.insert("Album", musicList[i].getAlbum());
    musicInfo.insert("Duration", musicList[i].getDuration());

    return musicInfo;
}
