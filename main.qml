import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3

Window {
    visible: true
    width: 1200
    height: 800
    title: qsTr("My Media Player")
    minimumWidth: 800
    minimumHeight: 600

    ColumnLayout{
        anchors.fill: parent
        spacing: 0
    }
}
