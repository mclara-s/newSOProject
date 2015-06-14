#ifndef MUSIC_H
#define MUSIC_H

#include <QMediaContent>
#include <taglib/tstring.h>
#include <taglib/fileref.h>

class Music
{
    QString FileName;
    QString Artista;
    QString Titulo;
    QString Album;
    QString Tempo;
    QMediaContent mediaContent;
    
public:
    Music();
    Music(const QUrl &url);
    Music(const QMediaContent &mc);
    ~Music();

    void setMediaContent(const QUrl &url);
    void setMediaContent(const QMediaContent &mC);
    void setDuration(int);
    void setInfo();

    QString getTitle();
    QString getArtist();
    QString getAlbum();
    QString getDuration();
    QString getFileName();
    QMediaContent getMediaContent();
};

#endif // MUSIC_H
