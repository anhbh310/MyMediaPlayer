#ifndef VIDEO_H
#define VIDEO_H

#include <QAbstractListModel>

class Video : public QAbstractListModel
{
    Q_OBJECT

public:
    explicit Video(QObject *parent = nullptr);

    enum{
        Name_Role = Qt::UserRole+1,
        Video_Name,
        Video_Duration,
        Video_Thumbnail
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
};

#endif // VIDEO_H
