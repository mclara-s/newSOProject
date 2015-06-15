#include "musiclibrary.h"

MusicLibrary::MusicLibrary()
{
    load(QUrl::fromLocalFile("MyLibrary.m3u"), "m3u");
    if(mediaCount() != 0)
        setCategories();
}

MusicLibrary::~MusicLibrary(){

}

void MusicLibrary::setCategories(){
    Music music;
    for (int i = 0; i < mediaCount(); i++){
        music.setMediaContent(media(i));
        MediaContentList << media(i);
        AllMusicsList << music;
        Artistas.insertMulti(music.getArtist(), music);
        Albuns.insertMulti(music.getAlbum(), music);
        MusicTitles.insertMulti(music.getTitle(), music);
    }
}

void MusicLibrary::addFromDirectory(QString directory){
    if(directory.isEmpty())
            return;

    QDir dir(directory);
    QStringList files = dir.entryList(QStringList() << "*.mp3",QDir::Files);
    Music music;
    for(int i = 0; i < files.size(); i++)
    {
        music.setMediaContent(QUrl::fromLocalFile(dir.path()+"/" + files.at(i)));
        MediaContentList << music.getMediaContent();
        AllMusicsList << music;
        Artistas.insertMulti(music.getArtist(), music);
        Albuns.insertMulti(music.getAlbum(), music);
        MusicTitles.insertMulti(music.getTitle(), music);
    }
    addMedia(MediaContentList);
    save(QUrl::fromLocalFile("MyLibrary.m3u"), "m3u");
}

QList<Music> MusicLibrary::findMusics(QString key){
    QList<Music> results;
    results.append(Artistas.values(key));
    results.append(MusicTitles.values(key));
    results.append(Albuns.values(key));
    qDebug() << Artistas.values(key).count();
    return results;

}

Music MusicLibrary::getMusic(QString title){
    return MusicTitles.value(title);
}

QList<Music> MusicLibrary::getAllMusicsList(){
    return AllMusicsList;
}

QStringList MusicLibrary::allArtists(){
    return QStringList(Artistas.keys());
}

QStringList MusicLibrary::allAlbuns(){
    return QStringList(Albuns.keys());
}

QStringList MusicLibrary::allMusics(){
    return QStringList(MusicTitles.keys());
}
