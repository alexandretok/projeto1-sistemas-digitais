#include "tela.h"
#include <QPainter>
#include <QDebug>
#include <cmath>

Tela::Tela(QWidget *parent) : QWidget(parent){
    qDebug() << "largura" << width();
    qDebug() << "altura" << height();
}

void Tela::adicionarPonto(float tempo, int ventilador){
    this->tempo[this->index] = tempo;
    this->ventilador[this->index++] = ventilador;
    repaint();
}

void Tela::zerar(){
    this->index = 0;
    this->repaint();
}

void Tela::paintEvent(QPaintEvent *){
    QPainter painter(this);
    QBrush brush;
    QPen pen;
    QFont font;

    painter.setRenderHint(QPainter::Antialiasing);

    pen.setColor(Qt::black);
    painter.setPen(pen);
    font.setPointSize(8);
    painter.setFont(font);

    brush.setColor(Qt::white);
    brush.setStyle(Qt::SolidPattern);
    painter.setBrush(brush);

    int margem = width() * 0.04;
    painter.drawRect(0,0,width()-1, height()-1);

    brush.setColor(Qt::black);

    /* Desenha eixo Y */
    painter.drawLine(QPoint(margem, margem), QPoint(margem, height() - margem));
    /* Desenha eixo X */
    painter.drawLine(QPoint(margem, height() - margem), QPoint(width() - margem, height() - margem));

    // Escala Y
    for(int i=0; i <= 100; i+=10){
        painter.drawLine(margem - 5, height() - margem - ((height() - margem)/90) * i, margem + 5, height() - margem - ((height() - margem)/90) * i);
        painter.drawText(margem - 20, 4 + height() - margem - ((height() - margem)/90) * i, QString::number(i));
    }

    // Escala Y
    for(float i=0; i <= 3; i+=0.5){
        painter.drawLine(margem + ((width() - margem) / 180) * (i * 60), height() - margem - 5, margem + ((width() - margem) / 180) * (i * 60), height() - margem + 5);
        painter.drawText(margem + ((width() - margem) / 180) * (i * 60) - 6, height() - margem + 17, QString::number(i));
    }

    for (int i=0; i < this->index; i++){
        pen.setColor(Qt::blue); pen.setWidth(3); painter.setPen(pen);
        QPoint pontoAtual = QPoint(margem + ((width() - margem) / 180) * (tempo[i] * 60),height() - margem - ((height() - margem)/90) * ventilador[i] );

        painter.drawPoint(pontoAtual);

        if(i > 1){
            QPoint pontoAnterior = QPoint(margem + ((width() - margem) / 180) * (tempo[i-1] * 60),height() - margem - ((height() - margem)/90) * ventilador[i-1] );
            pen.setColor(Qt::black); pen.setWidth(2); painter.setPen(pen);
            painter.drawLine(pontoAnterior, pontoAtual);
        }
    }
}
