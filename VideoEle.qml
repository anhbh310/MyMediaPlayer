import QtQuick 2.0
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

MouseEvent {
    id: albumItem
    width: 150
    height: 200
    clip: false
    hoverColor: "#00ffffff"
    property alias imageSource : img.source

    onEntered: {
        glowEffect.visible = true;
    }

    onExited: {
        glowEffect.visible = false;
    }

    Glow {
        id: glowEffect
        visible: false
        anchors.fill: img
        radius: 15
        samples: 17
        color: "#66808080"
        source: img
    }

    Image {
        id: img
        source: 'icon/io.jpg'
        width: 250
        height: 150
    }

    MouseArea {
        id: mouseArea
        hoverEnabled: true
        anchors.fill: parent

        onEntered: {
            onShow.start()
        }

        onExited: {
            onHide.start()
        }

        NumberAnimation {
            id: onShow
            target: buttonContainer
            properties: "opacity, scale"
            to: 1.0
            duration: 50
        }

        NumberAnimation {
            id: onHide
            target: buttonContainer
            properties: "opacity, scale"
            to: 0.0
            duration: 50
        }

        Item{
            id: buttonContainer
            anchors.fill: parent
            opacity: 0

            ControlButton {
                id: playBtn
                width: 50
                height: 50
                bgColor: "#e0fea9"
                anchors.left: parent.left
                anchors.leftMargin: 100
                anchors.top: parent.top
                anchors.topMargin: 50
                imageSource: "icon/tri.png"

                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        media_browser.state = "off"
                        media_player.state = "on"
                    }
                }

            }
        }
    }

    Text {
        id: albumLabel
        text: qsTr("WTF Daily")
        elide: Text.ElideRight
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 5
        font.bold: true
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 25
        font.pixelSize: 16
    }



}

