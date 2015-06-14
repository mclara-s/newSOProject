#include "music.h"

Music::Music()
{

}

Music::Music(const QUrl &url)
{
    mediaContent = url;
}

Music::Music(const QMediaContent &mC)
{
    mediaContent = mC;
}

Music::~Music()
{

}

void Music::setMediaContent(const QUrl &url){
    mediaContent = url;
    setInfo();
}

void Music::setMediaContent(const QMediaContent &mc){
    mediaContent = mc;
    setInfo();
}

void Music::setDuration(int sec){
    QString aux;
    Tempo.setNum(sec/60);
    Tempo += ":";
    aux.setNum(sec%60);
    Tempo += aux;
}

void Music::setInfo(){
    TagLib::FileRef file(mediaContent.canonicalUrl().path().toStdString().c_str());
    Titulo = file.tag()->title().toCString();
    Artista = file.tag()->artist().toCString();
    Album = file.tag()->album().toCString();
    setDuration(file.audioProperties()->length());
    FileName = mediaContent.canonicalUrl().fileName();
}


QString Music::getTitle(){
    return Titulo;
}

QString Music::getArtist(){
    return Artista;
}

QString Music::getAlbum(){
    return Album;
}

QString Music::getDuration(){
    return Tempo;
}

QString Music::getFileName(){
    return FileName;
}

QMediaContent Music::getMediaContent(){
    return mediaContent;
}
