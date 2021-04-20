import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.4


Window {
    visible: true
    width: 500
    height: 500
    title: qsTr("Hello World")
    Item{
        width: parent.width
        height: parent.height*1

        Rectangle{
            width:parent.width * 0.4
            height: parent.height*0.4
            color:"#880000"
            Text{
                text:qsTr("6.1217-1")
                font.pointSize:24
                color:"white"
                anchors.centerIn:parent
            }
        }
        Rectangle{
            x:0
            y:parent.height - parent.height * 0.4 -100
            width:parent.width * 0.4
            height: parent.height*0.4
            color:"#00FF00"
            Text{
                text:qsTr("color: \"#FF0000\"")
                anchors.centerIn:parent
            }
        }
        Rectangle{
            x:parent.width - parent.width * 0.4
            y:0
            width:parent.width * 0.4
            height: parent.height*0.4
            color:"#FF0000"
            Text{
                text:qsTr("<a href='http://www.qt.io/'>http://www.qt.io/</a>")
                anchors.centerIn:parent
            }
        }
        Rectangle{
            x:parent.width - parent.width * 0.4
            y:parent.height - parent.height * 0.4 -100
            width:parent.width * 0.4
            height: parent.height*0.4
            color:"#00B800"
            Text{
                width: parent.width
                font.italic: true
                text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in vestibulum erat, eu blandit urna."
                color:"white"
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                anchors.centerIn:parent
            }
        }
        Rectangle{
            id: centerBlock
            x:parent.width/2 - (parent.width * 0.4)/2
            y:parent.height/2 - (parent.height * 0.4)/2
            width:parent.width * 0.4
            height: parent.height*0.4
            color:"royalblue"
            radius: 25
            rotation: -45

            Text{
                width: parent.width
                text:qsTr("Дребезов Денис Олегович")
                font.bold: true
                font.pointSize:24
                wrapMode: Text.WordWrap
                anchors.centerIn:parent
                horizontalAlignment: Text.AlignHCenter
            }
        }



        Button {
            height : 80
            width: 80
            x: 0
            y: parent.height - 90
                text: "Exit"
                onClicked: Qt.quit()
            }

        }

        Rectangle{
            x: 90
            y: parent.height - 90
            height : 15
            width: 15
            color:"red"

            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: {
                     if(mouse.button & Qt.RightButton) {
                         centerBlock.color = "darkviolet"
                     }
                     else {
                         centerBlock.color = "red"
                     }
                 }
            }
        }

        Rectangle{
            x: 140
            y: parent.height - 90
            height : 15
            width: 15
            color:"orange"

            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: {
                     if(mouse.button & Qt.RightButton) {
                         centerBlock.color = "red"
                     }
                     else {
                         centerBlock.color = "orange"
                     }
                 }
            }
        }

        Rectangle{
            x: 190
            y: parent.height - 90
            height : 15
            width: 15
            color:"yellow"

            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                   onClicked: {
                        if(mouse.button & Qt.RightButton) {
                            centerBlock.color = "orange"
                        }
                        else {
                            centerBlock.color = "yellow"
                        }
                    }
            }
        }

        Rectangle{
            x: 240
            y: parent.height - 90
            height : 15
            width: 15
            color:"green"

            MouseArea {
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                   onClicked: {
                        if(mouse.button & Qt.RightButton) {
                            centerBlock.color = "yellow"
                        }
                        else {
                            centerBlock.color = "green"
                        }
                    }
                anchors.fill: parent
            }
        }

        Rectangle{
            x: 290
            y: parent.height - 90
            height : 15
            width: 15
            color:"skyblue"

            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                   onClicked: {
                        if(mouse.button & Qt.RightButton) {
                            centerBlock.color = "green"
                        }
                        else {
                            centerBlock.color = "skyblue"
                        }
                    }
            }
        }

        Rectangle{
            x: 340
            y: parent.height - 90
            height : 15
            width: 15
            color:"blue"

            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                   onClicked: {
                        if(mouse.button & Qt.RightButton) {
                            centerBlock.color = "skyblue"
                        }
                        else {
                            centerBlock.color = "blue"
                        }
                    }
            }
        }

        Rectangle{
            x: 390
            y: parent.height - 90
            height : 15
            width: 15
            color:"darkviolet"

            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                   onClicked: {
                        if(mouse.button & Qt.RightButton) {
                            centerBlock.color = "blue"
                        }
                        else {
                            centerBlock.color = "darkviolet"
                        }
                    }
            }
        }
}
