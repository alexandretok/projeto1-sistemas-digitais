#ifndef TELA_H
#define TELA_H

#include <QWidget>
#include <QDateTime>
#include <QMap>

using namespace std;

class Tela : public QWidget
{
    Q_OBJECT
public:
    explicit Tela(QWidget *parent = 0);
    void adicionarPonto(float tempo, int ventilador);
    void zerar();
private:
    float tempo[200];
    int ventilador[200], index = 0;
signals:

public slots:
protected:
    void paintEvent(QPaintEvent *);
};

#endif // TELA_H
