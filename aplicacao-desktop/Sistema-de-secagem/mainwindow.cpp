#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QtSerialPort/QSerialPort>

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent), ui(new Ui::MainWindow){
    ui->setupUi(this);

    foreach(const QSerialPortInfo &info, QSerialPortInfo::availablePorts()){
        qDebug() << "Name  :" << info.portName();
        qDebug() << "Description  :" << info.description();
        qDebug() << "Manufactuer :"  << info.manufacturer();
        ui->comboBox->addItem(info.portName());
    }
}

MainWindow::~MainWindow(){
    delete ui;
}

void MainWindow::on_pushButton_clicked(){
    ui->labelCliqueIniciar->setVisible(false);
    ui->pushButton->setEnabled(false);
    ui->labelStatus->setPixmap(QPixmap(":/img/on.png"));
}
