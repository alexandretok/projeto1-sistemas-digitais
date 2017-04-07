#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent), ui(new Ui::MainWindow){
    ui->setupUi(this);

    foreach(const QSerialPortInfo &info, QSerialPortInfo::availablePorts()){
        qDebug() << "Name  :" << info.portName();
        ui->comboBox->addItem(info.portName());
    }

    timer = new QTimer(this);

    connect(timer, SIGNAL(timeout()), this, SLOT(receberComando()));
}

MainWindow::~MainWindow(){
    delete ui;
}

void MainWindow::receberComando(){
    if(serial.waitForReadyRead(100)){
        QString response = serial.readAll();

        QStringList comandos = response.split("\n");

        foreach (QString comando, comandos) {
            if(comando.length()){
                if(comando.indexOf("finalizado") > -1){
                    timer->stop();
                    ui->pushButton->setEnabled(true);
                    ui->labelStatusIcone->setPixmap(QPixmap(":/img/conectado.png"));
                    ui->labelStatus->setText("Finalizado");
                    ui->comboBox->setEnabled(true);
                } else if(comando.indexOf("tmp:") > -1){
                    QStringList lista = comando.split("&");
                    int ventilador;
                    float tempo, alfa;
                    foreach (QString item, lista) {
                        if(item.indexOf("tmp:") > -1){
                            tempo = item.replace(QString("tmp:"), QString("")).toFloat();
                        } else if(item.indexOf("vel:") > -1){
                            ventilador = item.replace(QString("vel:"), QString("")).toInt();
                            ui->lcdVentilador->display(ventilador);
                        } else if(item.indexOf("alf:") > -1){
                            qDebug() << "item: " << item;
                            alfa = item.replace(QString("alf:"), QString("")).toFloat();
                            qDebug() << "alfa: " << alfa;
                            ui->lcdLuminosidade->display(alfa);
                        }
                    }

                    ui->tela->adicionarPonto(tempo, ventilador);
                }
            }
        }
    }
}

void MainWindow::on_pushButton_clicked(){
    ui->labelCliqueIniciar->setVisible(false);
    ui->pushButton->setEnabled(false);
    ui->labelStatusIcone->setPixmap(QPixmap(":/img/ventilador.png"));
    ui->labelStatus->setText("Secando");
    ui->comboBox->setEnabled(false);
    serial.write("iniciar\n");

    if(serial.waitForReadyRead(50)){
        QString response = serial.readAll();
        qDebug()<<"Response: " << response;

        if(response.indexOf("iniciando\n") > -1){
            timer->setInterval(100);
            timer->start();
        }
    }

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

        serial.clear();

        if(serial.waitForReadyRead(2000)){
            QString response = serial.readAll();
            qDebug()<<"Response: " << response;

            if(response.indexOf("pronto\n") > -1){
                ui->labelStatusIcone->setPixmap(QPixmap(":/img/conectado.png"));
                ui->labelStatus->setText("Conectado");
                ui->pushButton->setEnabled(true);
            } else {
                QMessageBox msgBox;
                msgBox.setText("O dispositivo respondeu incorretamente.\nTente novamente.");
                msgBox.exec();
            }
        }else{
            QMessageBox msgBox;
            msgBox.setText("O dispositivo não respondeu (time out).");
            msgBox.exec();
        }

        ui->comboBox->setEnabled(true);

//        serial.close();
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

void MainWindow::on_radioButton_2_toggled(bool checked){
    if(checked == true)
        ui->labelGrafico->setPixmap(QPixmap(":/img/grafico_arroz.png"));
}

void MainWindow::on_radioButton_toggled(bool checked){
    if(checked == true)
        ui->labelGrafico->setPixmap(QPixmap(":/img/grafico_cafe.png"));
}

void MainWindow::on_radioButton_3_toggled(bool checked){
    if(checked == true)
        ui->labelGrafico->setPixmap(QPixmap(":/img/grafico_milho.png"));
}
