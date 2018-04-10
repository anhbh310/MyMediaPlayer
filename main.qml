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

        RowLayout{
            width: 150
            height: 150
            spacing: 0

            Column {
                width: 250
                height: 400
                Layout.fillHeight: true

                Rectangle{
                    width: parent.width
                    height: parent.height
                    color: "#dafe96"

                    Column{
                        spacing: 5
                        anchors.fill: parent

                        Image {
                            id: logo
                            source: "icon/logo.png"
                            width: 150
                            height: 150
                            anchors.left: parent.left
                            anchors.leftMargin: 40
                            anchors.top: parent.top
                            anchors.topMargin: 40
                        }

                        Row{
                            width: parent.width
                            height: 50

                            SearchBar{
                                anchors.fill: parent
                            }
                        }
                    }
                }
            }

        }
    }
}
