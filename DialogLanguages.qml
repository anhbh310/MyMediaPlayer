import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2


Dialog {
    title: "Languages"
    width: 250
    height: 100
    standardButtons: StandardButton.OK

    contentItem: Column{
        width: parent.width
        height: parent.height
        Label{
            height: 40
            text: qsTr("Choose a language")
        }
        ComboBox {
                height: 30
                width: parent.width
                model: [ "Vietnamese", "English" ]
            }
        Button{
            height: 30
            text:qsTr("OK")
        }
    }
}








