#include "clanguages.h"

Clanguages::Clanguages(QObject *parent) : QObject(parent)
{

}

void Clanguages::setEngine(QQmlApplicationEngine *value)
{
    engine = value;
}

void Clanguages::setApplication(QGuiApplication *app)
{
    this->app = app;
    loadLanguage();
}

int Clanguages::getLanguage() const
{
    return language;
}

void Clanguages::loadLanguage()
{
    QFile file("language.dat");

    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)){
        emit languageChange(0);
        return;
    }

    QTextStream in(&file);

    int lang = in.readLine().toInt();

    if (lang == VIETNAMESE){
        translator.load("MyMediaPlayer_vi",":/languages");
        language = lang;
    } else {
        translator.load("MyMediaPlayer_en",":/languages");
        language = 0;
    }

    if (app){
        app->installTranslator(&translator);
    }
}

void Clanguages::changeLanguage(const int &lang)
{
    QFile file("language.dat");

    if (!file.open(QIODevice::WriteOnly | QIODevice::Text))
    return;


    QTextStream out(&file);

    out << lang;

    file.close();

    app->quit();
    QProcess::startDetached(app->arguments()[0], app->arguments());
}
