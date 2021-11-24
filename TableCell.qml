import QtQuick 2.0

Item {
    id: item
    property alias backgroundColor : r.color;
    property string elem : "?";
    property int num : 0
    property alias mouseArea: mouseArea
    signal clicked(string elem)

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        enabled: elem != "\t"
        onClicked: {
            item.clicked(elem)
        }
    }

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
        anchors.margins: 2
        font.pixelSize: parent.height * 0.28
        font.bold: true
        color: backgroundColor.lighter(3)
    }

    Text {
        id: txtElem
        text: elem
        anchors.bottom: r.bottom
        anchors.left: r.left
        anchors.margins: 2
        width: r.width
        color: backgroundColor.lighter(2)
        font.pixelSize: parent.width * 0.45
        font.bold: true
    }
}
