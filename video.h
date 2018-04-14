#ifndef MyVideo_H
#define MyVideo_H

#include <QAbstractListModel>

struct MV
{
    QString name;
    QString duration;
    QString thumbnail;
    QString url;
};
class MyVideo : public QAbstractListModel
{
    Q_OBJECT

public:
    explicit MyVideo(QObject *parent = nullptr);

    enum{
        Name_Role = Qt::UserRole+1,
        MyVideo_Name,
        MyVideo_Duration,
        MyVideo_Thumbnail,
        MyVideo_URL
    };

    // Basic functionality:
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;

    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;

    // Editable:
    bool setData(const QModelIndex &index, const QVariant &value,
                 int role = Qt::EditRole) override;

    Qt::ItemFlags flags(const QModelIndex& index) const override;

    virtual QHash<int, QByteArray> roleNames() const override;

private:
    QVector<MV> myList;
};

#endif // MyVideo_H
