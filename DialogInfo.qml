import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2

Dialog {
    title: qsTr("About Us")
    width: 250
    height: 240

    contentItem: Column{
        id: clAb
        width: parent.width
        height: parent.height
        spacing: 20

        Text{
            text: qsTr("K60A2_Class T3_Group 2")
            font.bold: true
            anchors.horizontalCenter: clAb.horizontalCenter
        }
        Text{
            text: qsTr("~ Bui Hoang Anh ~")
            anchors.horizontalCenter: clAb.horizontalCenter
        }
        Text{
            text: qsTr("~ Nguyen Dinh Bao ~")
            anchors.horizontalCenter: clAb.horizontalCenter
        }
        Text{
            text: qsTr("~ Bui Huong Giang ~")
            anchors.horizontalCenter: clAb.horizontalCenter
        }
        Text{
            text: qsTr("~ Hoang Thi Mai Huong ~")
            anchors.horizontalCenter: clAb.horizontalCenter
        }

        Button{
            height: 30
            text:qsTr("Cancel")
            anchors.horizontalCenter: clAb.horizontalCenter
            onClicked: {
                close()
            }
        }
    }
}





