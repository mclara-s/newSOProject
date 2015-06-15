#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "musiclibrary.h"
#include <QMediaPlayer>
#include <QFileDialog>
#include <QStandardItem>
#include "music.h"
#include <QSplitter>
#include "dialog.h"


namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

    void setLibrary();
    void addToLibrary();

private slots:
    void on_sliderProgress_sliderMoved(int position);

    void on_sliderVolume_sliderMoved(int position);

    void on_positionChanged(qint64 position);

    void on_durationChanged(qint64 position);

    void on_playPause_clicked();

    void on_shuffle_clicked();

    void on_repeat_clicked();

    void setCurrentData();

    void on_previous_clicked();

    void on_next_clicked();

    void on_listWidget_doubleClicked(const QModelIndex &index);

    void on_tableView_doubleClicked(const QModelIndex &index);

    void on_lineEdit_returnPressed();

    void on_pushButton_clicked();

    void on_NovaPlaylist_clicked();

private:
    Ui::MainWindow *ui;
    QMediaPlayer *player;
    QMediaPlaylist *nowPlaying;
    QString directory;
    MusicLibrary *myLib;
    QStandardItemModel *model;
    QList<QStandardItem *> listaItem;

};

#endif // MAINWINDOW_H
