import QtQuick 2.0


MouseEvent {
    width: 200
    height: 50

    Rectangle {
        id: rectangle
        color: "#f8f8f8"
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 5
        anchors.topMargin: 5
        anchors.fill: parent

        TextInput {
            id: textInput
            height: 24
            text: qsTr("")
            clip: true
            anchors.left: parent.left
            anchors.leftMargin: 6
            anchors.right: parent.right
            anchors.rightMargin: 40
            anchors.verticalCenterOffset: 2
            font.pointSize: 11
            renderType: Text.QtRendering
            font.weight: Font.Thin
            cursorVisible: true
            echoMode: TextInput.Normal
            inputMask: qsTr("")
            font.wordSpacing: -1
            font.capitalization: Font.MixedCase
            font.family: "Tahoma"
            anchors.verticalCenter: parent.verticalCenter
        }

        MyButton {
            id: iconButton
            maximumize: false
            width: 50
            height: 50
            text: ""
            source: "icon/gsearch.png"
            anchors.right: parent.right
            anchors.rightMargin: 0
            hoverColor: "#fff"
        }



    }

}
