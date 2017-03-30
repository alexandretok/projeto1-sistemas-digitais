#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent), ui(new Ui::MainWindow){
    ui->setupUi(this);
}

MainWindow::~MainWindow(){
    delete ui;
}

void MainWindow::on_pushButton_clicked(){
    ui->labelCliqueIniciar->setVisible(false);
    ui->pushButton->setEnabled(false);
    ui->labelStatus->setPixmap(QPixmap(":/img/on.png"));
}
