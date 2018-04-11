import QtQuick 2.0

Rectangle{
    id: media_player
    width: parent.width
    height: parent.height
    color: "#f00"

    states: [
        State {
            name: "on"
            PropertyChanges {
                target: MediaPlayer
                opacity: 1.0

            }
        },

        State {
            name: "off"
            PropertyChanges {
                target: MediaPlayer
                opacity:0

            }
        }
    ]
}
