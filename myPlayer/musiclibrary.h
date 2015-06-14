#ifndef MUSICLIBRARY_H
#define MUSICLIBRARY_H

#include <QMediaMetaData>
#include <QMediaPlaylist>
#include <QDir>
#include "music.h"

class MusicLibrary: public QMediaPlaylist
{
    QList<QMediaContent> contentList;
    QList<Music> musicList;
    QStringList fileNames;

public:
    MusicLibrary();
    ~MusicLibrary();

    void setContentList();
    void setMusicList();
    void setContent(QString);
    QStringList getFilenames();
    QHash<QString,QString> getMusicInfo(int);
    QList<QMediaContent> getContentMedia();
};


#endif // MUSICLIBRARY_H
