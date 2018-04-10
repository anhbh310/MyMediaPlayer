import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 1000
    height: 800
    title: qsTr("My Media Player")
    minimumWidth: 800
    minimumHeight: 600

    RowLayout{
        width: 150
        height: 150
        spacing: 0
        anchors.fill: parent

        Column {
            width: 250
            height: 400
            Layout.fillHeight: true

            Rectangle{
                width: parent.width
                height: parent.height
                color: "#d5fe89"

                Column{
                    spacing: 5
                    anchors.fill: parent

                    Row{
                        width: parent.width
                        height: 180
                        Image {
                            id: logo
                            source: "icon/logo.png"
                            width: 150
                            height: 150
                            anchors.left: parent.left
                            anchors.leftMargin: 45
                            anchors.top: parent.top
                            anchors.topMargin: 20
                        }
                    }

                    Row{
                        id: srch
                        width: parent.width
                        height: 50
                        //                            anchors.top: logo.bottom
                        //                            anchors.topMargin: 20

                        SearchBar{
                            anchors.fill: parent
                        }
                    }

                    Row{
                        height: 280
                        width: parent.width
                        ButtonCluster{
                            id: btns
                            anchors.right: parent.right
                            anchors.rightMargin: 0
                            anchors.left: parent.left
                            anchors.leftMargin: 0
                            anchors.top: srch.bottom
                            anchors.topMargin: 20

                            MyButton {
                                x: 0
                                y: 0
                                height: 70
                                text: "My Video"
                                toggle: true
                                anchors.right: parent.right
                                anchors.rightMargin: 0
                                anchors.left: parent.left
                                anchors.leftMargin: 0
                                source: "icon/gvid.png"
                            }

                            MyButton {
                                x: 0
                                y: 70
                                height: 70
                                text: "Recent Watch"
                                toggle: true
                                anchors.right: parent.right
                                anchors.rightMargin: 0
                                anchors.left: parent.left
                                anchors.leftMargin: 0
                                source: "icon/gclock.png"
                            }

                            MyButton {
                                x: 0
                                y: 140
                                height: 70
                                text: "About Us"
                                toggle: true
                                anchors.right: parent.right
                                anchors.rightMargin: 0
                                anchors.left: parent.left
                                anchors.leftMargin: 0
                                source: "icon/gabout.png"
                            }

                            MyButton {
                                x: 0
                                y: 210
                                height: 70
                                text: "Setting"
                                toggle: true
                                anchors.right: parent.right
                                anchors.rightMargin: 0
                                anchors.left: parent.left
                                anchors.leftMargin: 0
                                source: "icon/gsetting.png"
                            }

                        }

                    }

                }
            }
        }

        Column{
            spacing: 0
            Layout.fillHeight: true
            Layout.fillWidth: true

            StackView{
                width: 200
                height: 200
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignTop | Qt.AlignLeft

                Label{
                    width: 150
                    height: 50
                    text: qsTr("My Video")
                    font.pointSize: 36
                    font.bold: true
                    x: 40
                    y: 25
                    color: "#3c5a01"
                }
            }
        }

    }
}
