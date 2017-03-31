#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent), ui(new Ui::MainWindow){
    ui->setupUi(this);

    foreach(const QSerialPortInfo &info, QSerialPortInfo::availablePorts()){
        qDebug() << "Name  :" << info.portName();
        ui->comboBox->addItem(info.portName());
    }
}

MainWindow::~MainWindow(){
    delete ui;
}

void MainWindow::on_pushButton_clicked(){
    ui->labelCliqueIniciar->setVisible(false);
    ui->pushButton->setEnabled(false);
    ui->labelStatusIcone->setPixmap(QPixmap(":/img/ventilador.png"));
    ui->labelStatus->setText("Secando");
    ui->comboBox->setEnabled(false);
    serial.write("iniciarSecagem;");
}

void MainWindow::on_comboBox_currentIndexChanged(const QString &portaSelecionada){

    serial.close();

    if(portaSelecionada.indexOf("Selecione...") != -1){
        ui->labelStatusIcone->setPixmap(QPixmap(":/img/desconectado.png"));
        ui->labelStatus->setText("Desconectado");
        ui->pushButton->setEnabled(false);
        return;
    }

    ui->labelStatus->setText("Conectando...");
    qApp->processEvents();

    qDebug() << "Porta selecionada: " << portaSelecionada;
    serial.setPortName(portaSelecionada);

    if(serial.open(QIODevice::ReadWrite)){
        if(!serial.setBaudRate(QSerialPort::Baud9600))
            qDebug() << serial.errorString();

        if(!serial.setDataBits(QSerialPort::Data8))
            qDebug() << serial.errorString();

        if(!serial.setParity(QSerialPort::NoParity))
            qDebug()<<serial.errorString();

        if(!serial.setStopBits(QSerialPort::OneStop))
            qDebug()<<serial.errorString();

        if(!serial.setFlowControl(QSerialPort::NoFlowControl))
            qDebug()<<serial.errorString();

        serial.write("M114 \n");

        ui->comboBox->setEnabled(false);

        if(serial.waitForReadyRead(2000)){
            QString response = serial.readAll();
            qDebug()<<"Response: " << response;

            if(response.indexOf("standBy;") > -1){
                ui->labelStatusIcone->setPixmap(QPixmap(":/img/conectado.png"));
                ui->labelStatus->setText("Conectado");
                ui->pushButton->setEnabled(true);
            }
        }else{
            QMessageBox msgBox;
            msgBox.setText("O dispositivo não respondeu (time out).");
            msgBox.exec();
        }

        ui->comboBox->setEnabled(true);

        serial.close();
    }else{
        ui->labelStatusIcone->setPixmap(QPixmap(":/img/desconectado.png"));
        ui->labelStatus->setText("Desconectado");
        ui->pushButton->setEnabled(false);
        ui->comboBox->setCurrentIndex(0);

        QMessageBox msgBox;
        if(serial.errorString().indexOf("Permission denied") != -1)
            msgBox.setText("Você não tem permissão para acessar a porta selecionada.");
        else if(serial.errorString().indexOf("busy") != -1)
            msgBox.setText("O dispositivo está ocupado.");
        else if(serial.errorString().indexOf("Device is not open") != -1)
            msgBox.setText("O dispositivo não está aberto.");
        else
            msgBox.setText("Ocorreu um erro ao conectar-se à porta: \n\n" + serial.errorString());
        msgBox.exec();
    }
}
