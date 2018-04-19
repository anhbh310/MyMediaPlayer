#ifndef CLANGUAGES_H
#define CLANGUAGES_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QGuiApplication>
#include <QTranslator>
#include <QProcess>
#include <QFile>
#include <QTextStream>

class Clanguages : public QObject
{
    Q_OBJECT
public:

    enum {
        ENGLISH,
        VIETNAMESE
    };

    explicit Clanguages(QObject *parent = nullptr);

    Q_INVOKABLE void changeLanguage(const int &lang);

    Q_INVOKABLE int getLanguage() const;

    void setEngine(QQmlApplicationEngine *value);

    void setApplication(QGuiApplication *app);


private:

    int language;

    QQmlApplicationEngine *engine;
    QGuiApplication *app;
    QTranslator translator;

    void loadLanguage();

signals:

    void languageChange(int value);

};

#endif // CHANGELANGUAGES_H
