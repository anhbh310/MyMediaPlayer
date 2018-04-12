#include "video.h"

Video::Video(QObject *parent)
    : QAbstractListModel(parent)
{
}

int Video::rowCount(const QModelIndex &parent) const
{
    // For list models only the root node (an invalid parent) should return the list's size. For all
    // other (valid) parents, rowCount() should return 0 so that it does not become a tree model.
    if (parent.isValid())
        return 0;

    // FIXME: Implement me!
    return 10000;
}

QVariant Video::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();

    // FIXME: Implement me!
    QVariant retVal = QVariant();
    switch (role) {
    case Video_Name:
        retVal= "Dota WTF";
        break;
    case Video_Duration:
        retVal= "4:20";
        break;
    case Video_Thumbnail:
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

bool Video::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if (data(index, role) != value) {
        // FIXME: Implement me!
        emit dataChanged(index, index, QVector<int>() << role);
        return true;
    }
    return false;
}

Qt::ItemFlags Video::flags(const QModelIndex &index) const
{
    if (!index.isValid())
        return Qt::NoItemFlags;

    return Qt::ItemIsEditable; // FIXME: Implement me!
}

QHash<int, QByteArray> Video::roleNames() const
{
    QHash<int, QByteArray> names;
    names[Video_Thumbnail]="thumbnail";
    names[Video_Name]="name";
    names[Video_Duration]="duration";
    return names;
}
