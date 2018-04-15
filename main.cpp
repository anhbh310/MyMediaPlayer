#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QTranslator>

#include "video.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    qmlRegisterType<MyVideo>("MyVideo",1,0,"MyVideo");

    QTranslator translator;
    translator.load("MyMediaPlayer_vi",":/languages");
    app.installTranslator(&translator);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
