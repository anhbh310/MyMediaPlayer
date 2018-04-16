import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2

Dialog {
    title: qsTr("Languages")
    width: 250
    height: 110

    contentItem: Column{
        id: clLan
        width: parent.width
        height: parent.height
        spacing: 10

        Label{
            id:lbLan
            anchors.horizontalCenter: clLan.horizontalCenter
            anchors.topMargin: 10
            height: 20
            text: qsTr("Choose a language")
            font.pointSize: 12
            font.italic: true
        }
        ComboBox {
            id: cbbox
            height: 30
            width: 200
            anchors.horizontalCenter: clLan.horizontalCenter
            model: [ qsTr("Vietnamese"), qsTr("English") ]
            signal languageSignal(int msg)
        }
        Button{
            height: 30
            text:qsTr("OK")
            anchors.horizontalCenter: clLan.horizontalCenter
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    cbbox.languageSignal(cbbox.currentIndex)
                    close()
                }
            }
        }
    }
}





