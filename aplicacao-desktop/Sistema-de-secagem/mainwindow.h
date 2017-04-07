#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QDebug>
#include <QtSerialPort/QSerialPort>
#include <QtSerialPort/QSerialPortInfo>
#include <QMessageBox>
#include <QApplication>
#include <QTimer>
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
    void receberComando();
    void on_comboBox_currentIndexChanged(const QString &arg1);
    void on_radioArroz_toggled(bool checked);
    void on_radioCafe_toggled(bool checked);
    void on_radioMilho_toggled(bool checked);

private:
    Ui::MainWindow *ui;
    QSerialPort serial;
    QTimer *timer;
};

#endif // MAINWINDOW_H
