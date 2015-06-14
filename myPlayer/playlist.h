#ifndef PLAYLIST_H
#define PLAYLIST_H

#include <QMediaPlaylist>
#include "music.h"
class Playlist : public QMediaPlaylist
{
    QString Name;
    QList<Music> musicList;

public:
    Playlist();
    Playlist(QString);
    ~Playlist();

    void setName(QString);
    void addMusic(Music);
    QHash<QString, QString> getMusicInfo(int);
};

#endif // PLAYLIST_H
