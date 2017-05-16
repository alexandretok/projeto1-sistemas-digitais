#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QDebug>
#include <QTcpSocket>
#include <QDataStream>
#include <QMessageBox>
#include <QApplication>
#include <tela.h>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void on_pushButton_clicked();
    void ler();
    void on_radioArroz_toggled(bool checked);
    void on_radioCafe_toggled(bool checked);
    void on_radioMilho_toggled(bool checked);

private:
    Ui::MainWindow *ui;
    QTcpSocket *tcpSocket;
    QDataStream stream;
};

#endif // MAINWINDOW_H
