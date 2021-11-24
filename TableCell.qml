import QtQuick 2.0

Item {
    property alias backgroundColor : r.color;
    property string elem : "?";
    property int num : 0
    Rectangle {
        id: r
        anchors.fill: parent
        color: backgroundColor.darker(100)
        opacity: 0.56
        visible: elem != '\t'
        radius: 5
        anchors.margins: 2   
    }
    Text {
        id: txtNum
        visible: num != 0
        text: num
        anchors.top: r.top
        anchors.left: r.left
        font.pixelSize: txtElem.font.pixelSize *0.9
        color: backgroundColor.lighter(3)
    }

    Text {
        id: txtElem
        text: elem
        anchors.bottom: r.bottom
        width: r.width
        color: backgroundColor.lighter(2)
        font.pixelSize: parent.width * 0.5
        font.bold: true
    }
}
