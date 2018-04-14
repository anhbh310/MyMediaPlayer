#include "video.h"

MyVideo::MyVideo(QObject *parent)
    : QAbstractListModel(parent)
{
}

int MyVideo::rowCount(const QModelIndex &parent) const
{
    // For list models only the root node (an invalid parent) should return the list's size. For all
    // other (valid) parents, rowCount() should return 0 so that it does not become a tree model.
    if (parent.isValid())
        return 0;

    // FIXME: Implement me!
    return 10000;
}

QVariant MyVideo::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();

    // FIXME: Implement me!
    QVariant retVal = QVariant();
    switch (role) {
    case MyVideo_Name:
        retVal= "Dota WTF";
        break;
    case MyVideo_Duration:
        retVal= "4:20";
        break;
    case MyVideo_URL:
        retVal= "MyVideo/day and night.mp4";//Nhap URL vao day
        break;
    case MyVideo_Thumbnail:
        int tmp = qrand()%4;
        switch (tmp) {
        case 0:
            retVal= "icon/io.jpg";
            break;
        case 1:
            retVal= "icon/kotol.jpg";
            break;
        case 2:
            retVal= "icon/tusk.jpg";
            break;
        case 3:
            retVal= "icon/earthspirit.jpg";
            break;
        }
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
