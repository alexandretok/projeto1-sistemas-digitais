#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent), ui(new Ui::MainWindow), tcpSocket(new QTcpSocket(this)){
    ui->setupUi(this);

    stream.setDevice(tcpSocket);
    stream.setVersion(QDataStream::Qt_4_0);

    connect(tcpSocket, SIGNAL(readyRead()), this, SLOT(ler()));
}

MainWindow::~MainWindow(){
    delete ui;
}

void MainWindow::ler(){
    QString recebido = tcpSocket->read(256);
    qDebug() << "Recebido via socket: " << recebido;
    QStringList lista = recebido.split("&");
    qDebug() << lista;
    int ventilador;
    float tempo, alfa;
    foreach (QString item, lista) {
        if(item.indexOf("tempo=") > -1){
            tempo = item.replace(QString("tempo="), QString("")).toFloat();
        } else if(item.indexOf("velocidade=") > -1){
            ventilador = item.replace(QString("velocidade="), QString("")).toInt();
            ui->lcdVentilador->display(ventilador);
        } else if(item.indexOf("alfa=") > -1){
            alfa = item.replace(QString("alfa="), QString("")).toFloat();
            ui->lcdLuminosidade->display(alfa);
        }
    }

    ui->tela->adicionarPonto(tempo, ventilador);
}

/*void MainWindow::receberComando(){
    if(serial.waitForReadyRead(100)){
        QString response = serial.readAll();

        QStringList comandos = response.split("\n");

        foreach (QString comando, comandos) {
            if(comando.length()){
                if(comando.indexOf("fim") > -1){
                    timer->setInterval(1000);
                    ui->pushButton->setEnabled(true);
                    ui->labelStatusIcone->setPixmap(QPixmap(":/img/conectado.png"));
                    ui->labelStatus->setText("Finalizado");
                    ui->comboBox->setEnabled(true);
                    ui->radioArroz->setEnabled(true);
                    ui->radioCafe->setEnabled(true);
                    ui->radioMilho->setEnabled(true);
                } else if(comando.indexOf("iniciando") > -1){
                    ui->radioArroz->setChecked(true);
                    ui->radioArroz->setEnabled(false);
                    ui->radioCafe->setEnabled(false);
                    ui->radioMilho->setEnabled(false);
                    ui->tela->zerar();
                    timer->setInterval(100);
                    ui->labelCliqueIniciar->setVisible(false);
                    ui->pushButton->setEnabled(false);
                    ui->labelStatusIcone->setPixmap(QPixmap(":/img/ventilador.png"));
                    ui->labelStatus->setText("Secando");
                    ui->comboBox->setEnabled(false);
                } else if(comando.indexOf("tmp:") > -1){

                } else qDebug () << "comando não reconhecido: " << comando;
            }
        }
    }
}*/

void MainWindow::on_pushButton_clicked(){
    if(ui->pushButton->text() == QString("Conectar-se")){
        ui->labelStatus->setText("Conectando...");
        qApp->processEvents();

        qDebug() << "tentando conetar a " + QString(ui->lineEdit->text());
        tcpSocket->connectToHost(ui->lineEdit->text(), 6666);

        if (!tcpSocket->waitForConnected(5)) {
            QMessageBox msgBox;
            msgBox.setText("Não foi possível conectar-se ao dispositivo.\nTente novamente.\nErro:" + QString(tcpSocket->error()) + ": " + QString(tcpSocket->errorString()));
            msgBox.exec();
            ui->labelStatusIcone->setPixmap(QPixmap(":/img/desconectado.png"));
            ui->labelStatus->setText("Desconectado");
            return;
        }

        qDebug() << "conectado!";
        ui->pushButton->setText("Iniciar");
        ui->labelStatusIcone->setPixmap(QPixmap(":/img/conectado.png"));
        ui->labelStatus->setText("Conectado");
    } else if(ui->pushButton->text() == QString("Iniciar")){
        if(ui->radioArroz->isChecked())
            tcpSocket->write("iniciar=arroz");
        else if(ui->radioCafe->isChecked())
            tcpSocket->write("iniciar=cafe");
        else if(ui->radioMilho->isChecked())
            tcpSocket->write("iniciar=milho");
        ui->tela->zerar();
        ui->labelCliqueIniciar->setVisible(false);
        ui->pushButton->setEnabled(false);
        ui->labelStatusIcone->setPixmap(QPixmap(":/img/ventilador.png"));
        ui->labelStatus->setText("Secando");
    }
}

void MainWindow::on_radioArroz_toggled(bool checked){
    if(checked == true)
        ui->labelGrafico->setPixmap(QPixmap(":/img/grafico_arroz.png"));
}

void MainWindow::on_radioCafe_toggled(bool checked){
    if(checked == true)
        ui->labelGrafico->setPixmap(QPixmap(":/img/grafico_cafe.png"));
}

void MainWindow::on_radioMilho_toggled(bool checked){
    if(checked == true)
        ui->labelGrafico->setPixmap(QPixmap(":/img/grafico_milho.png"));
}
