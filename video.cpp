#include "video.h"

MyVideo::MyVideo(QObject *parent)
    : QAbstractListModel(parent)
{
    for (int i=1;i<=10000;i++){
        QString name = "DailyWTF " + QString::number(i);
        QString duration = QString::number(qrand()%5 - qrand()%2)+":"+QString::number(qrand()%60);
        QString thumbnail="";
        int tmp = qrand()%4;
        switch (tmp) {
        case 0:
            thumbnail ="icon/io.jpg";
            break;
        case 1:
            thumbnail ="icon/kotol.jpg";
            break;
        case 2:
            thumbnail ="icon/tusk.jpg";
            break;
        case 3:
            thumbnail ="icon/earthspirit.jpg";
            break;
        default:
            break;
        }
        QString url="";
        myList.append({name,duration,thumbnail,url});
    }
}

int MyVideo::rowCount(const QModelIndex &parent) const
{
    // For list models only the root node (an invalid parent) should return the list's size. For all
    // other (valid) parents, rowCount() should return 0 so that it does not become a tree model.
    if (parent.isValid())
        return 0;

    // FIXME: Implement me!
    return myList.size();
}

QVariant MyVideo::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();
    const MV t = myList.at(index.row());
    // FIXME: Implement me!
    QVariant retVal = QVariant();
    switch (role) {
    case MyVideo_Name:
        retVal= t.name;
        break;
    case MyVideo_Duration:
        retVal= t.duration;
        break;
    case MyVideo_URL:
        retVal= t.url;
        break;
    case MyVideo_Thumbnail:
        retVal=t.thumbnail;
        break;
    }
    return retVal;
}

bool MyVideo::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if (data(index, role) != value) {
        // FIXME: Implement me!
        emit dataChanged(index, index, QVector<int>() << role);
        return true;
    }
    return false;
}

Qt::ItemFlags MyVideo::flags(const QModelIndex &index) const
{
    if (!index.isValid())
        return Qt::NoItemFlags;

    return Qt::ItemIsEditable; // FIXME: Implement me!
}

QHash<int, QByteArray> MyVideo::roleNames() const
{
    QHash<int, QByteArray> names;
    names[MyVideo_Thumbnail]="thumbnail";
    names[MyVideo_Name]="name";
    names[MyVideo_Duration]="duration";
    names[MyVideo_URL]="url";
    return names;
}
