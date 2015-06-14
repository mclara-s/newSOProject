#include "musiclibrary.h"

MusicLibrary::MusicLibrary()
{
    load(QUrl::fromLocalFile("MyLibrary.m3u"), "m3u");
    if (mediaCount() != 0){
        setContentList();
        setMusicList();
    }
}

MusicLibrary::~MusicLibrary()
{

}

void MusicLibrary::setContentList(){
    for (int i = 0; i < mediaCount(); i++)
            contentList << media(i);
}

void MusicLibrary::setMusicList(){
    Music musica;
    for (int i = 0; i < mediaCount(); i++){
        musica.setMediaContent(media(i));
        musicList << musica;
        fileNames << musica.getFileName();
    }
}

void MusicLibrary::setContent(QString directory){
    if(directory.isEmpty())
            return;

    QDir dir(directory);
    QStringList files = dir.entryList(QStringList() << "*.mp3",QDir::Files);
    QString f;
    for(int i = 0; i < files.size(); i++)
    {
        f = files.at(i);
        contentList.push_back(QUrl::fromLocalFile(dir.path()+"/" + f));
    }
    addMedia(contentList);
    setMusicList();
    save(QUrl::fromLocalFile("MyLibrary.m3u"), "m3u");
}

QHash<QString,QString> MusicLibrary::getMusicInfo(int i){
    QHash<QString, QString> musicInfo;
    musicInfo.insert("Artista", musicList[i].getArtist());
    musicInfo.insert("Titulo", musicList[i].getTitle());
    musicInfo.insert("Album", musicList[i].getAlbum());
    musicInfo.insert("Duration", musicList[i].getDuration());
    musicInfo.insert("Filename", musicList[i].getFileName());
    
    return musicInfo;    
}

QList<QMediaContent> MusicLibrary::getContentMedia(){
    return contentList;
}

QStringList MusicLibrary::getFilenames(){
    return fileNames;
}
