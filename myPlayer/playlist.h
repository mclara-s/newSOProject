#ifndef PLAYLIST_H
#define PLAYLIST_H

#include <QMediaPlaylist>
#include "music.h"
class Playlist : public QMediaPlaylist
{
    QString Name;
    QHash<QString, Music > MusicTitles;
    QList<Music> AllMusicsList;
    QList<QMediaContent> contentList;

public:
    Playlist();
    Playlist(QString);
    ~Playlist();

    void setName(QString);
    void addMusic(Music);
    bool hasMusic(QString);
    Music getMusic(QString);
    QList<Music> getAllMusicsList();
    QList<QMediaContent> getContentList();
};

#endif // PLAYLIST_H
