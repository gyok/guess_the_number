import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Layouts 1.13
import QtQuick.Controls 2.13
import Rsnd 1.0

Window {
    visible: true
    Rsnd {
        id: rsnd
    }
    function angshin(num) {
        if (rsnd.dhaw(3) === num)
        {
            kolia.color = "#45dd12"
        }
        else {
            kolia.color = "#dd4512"
        }
    }

    Rectangle {
        id: kolia
        anchors.fill: parent
        color: "#5600ff"
        GridLayout {
            id: mainLayout
            anchors.centerIn: parent
            columns: 1
            Button {
                text: "1"
                onClicked: angshin(1)
            }
            Button {
                text: "2"
                onClicked: {
                    mainLayout.columns = 2
                    kolia.color ="#acdacd"
                }
            }
        }
    }
}
