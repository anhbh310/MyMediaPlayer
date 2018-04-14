import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtMultimedia 5.9

Column{
    id: media_player
    width: parent.width
    height: parent.height

//    Image{
//        width: parent.width
//        height: parent.height - 100
//        source: "icon/dt.jpg"
//    }

    Rectangle{
        width: parent.width
        height: parent.height - 100
        color: "#ff77bb"
        Video{
            id:vidPl
            width: parent.width -10
            height: parent.height -10
            focus: true
            source: "video/test.AVI"
        }

    }

    Item {
        height: 100
        width: parent.width
        Rectangle {
            id: rectangle
            color: "#ffff79"
            radius: 0
            anchors.fill: parent
        }

        RowLayout {
            id: rowLayout
            spacing: 10
            anchors.fill: parent

            StackView {
                width: 200
                height: parent.height
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                Column {
                    id: column
                    anchors.fill: parent

                    Row {
                        height: 40
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.left: parent.left
                        anchors.leftMargin: 0

                        RowLayout {
                            anchors.rightMargin: 60
                            anchors.leftMargin: 60
                            anchors.fill: parent

                            Label {
                                color: "#404244"
                                text: qsTr("3:02")
                                font.pointSize: 10
                            }

                            ProgressBar {
                                id: progressBar
                                Layout.fillWidth: true
                                value: 0.75
                            }

                            Label {
                                color: "#404244"
                                text: qsTr("4:20")
                                font.pointSize: 10
                            }

                        }
                    }

                    Row {
                        id: row1
                        y: 0
                        height: 60
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        anchors.right: parent.right
                        anchors.rightMargin: 0

                        RowLayout {
                            y: 0
                            width: 400
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.verticalCenter: parent.verticalCenter
                            spacing: 0

                            ControlButton {
                                id: btnFt
                                width: 50
                                height: 50
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                imageSource: "icon/first_track.png"
                            }
                            ControlButton {
                                id: btnBackward
                                width: 50
                                height: 50
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                imageSource: "icon/backward.png"
                            }
                            ControlButton {
                                id: btnPlay
                                width: 50
                                height: 50
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                imageSource: "icon/play.png"
                                onClicked: vidPl.play()
                            }
                            ControlButton {
                                id: btnPause
                                width: 50
                                height: 50
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                imageSource: "icon/pause.png"
                            }
                            ControlButton {
                                id:btnStop
                                width: 50
                                height: 50
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                imageSource: "icon/stop.png"
                            }
                            ControlButton {
                                id: btnForward
                                width: 50
                                height: 50
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                imageSource: "icon/forward.png"
                            }
                            ControlButton {
                                id:btnLt
                                width: 50
                                height: 50
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                imageSource: "icon/last_track.png"
                            }
                        }
                    }

                }

            }

            StackView {
                width: 250
                height: parent.height
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                Column {
                    spacing: 10
                    anchors.fill: parent

                    ControlButton {
                        id: btnVolume
                        width: 50
                        height: 50
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        anchors.top: parent.top
                        anchors.topMargin: 16
                        imageSource: "icon/volume2.png"
                    }

                    Slider {
                        id: sldVolume
                        height: 10
                        scale: 0.7
                        anchors.left: parent.left
                        anchors.leftMargin: 15
                        anchors.top: parent.top
                        anchors.topMargin: 30
                        value: 0.5
                    }

                }
            }
        }

    }

    states: [
        State {
            name: "on"
            PropertyChanges {
                target: media_player
                opacity: 1.0

            }
        },

        State {
            name: "off"
            PropertyChanges {
                target: media_player
                opacity:0

            }
        }
    ]

    transitions: Transition {
        NumberAnimation{
            properties: "opacity"
            duration: 600
        }
    }
}
