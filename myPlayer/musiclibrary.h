#ifndef MUSICLIBRARY_H
#define MUSICLIBRARY_H

#include <QMediaMetaData>
#include <QMediaPlaylist>
#include <QDir>
#include "music.h"
#include "playlist.h"
//#include "dialog.h"

class MusicLibrary: public QMediaPlaylist
{
    QList<QMediaContent> MediaContentList;
    QHash<QString, Music > Artistas;
    QHash<QString, Music > Albuns;
    QHash<QString, Music > MusicTitles;
    QList<Music> AllMusicsList;
    void setCategories();

public:
    MusicLibrary();
    ~MusicLibrary();

    void addFromDirectory(QString);
    QList<Music> findMusics(QString);
    Music getMusic(QString);
    QList<Music> getAllMusicsList();
    QStringList allArtists();
    QStringList allAlbuns();
    QStringList allMusics();

};


#endif // MUSICLIBRARY_H
