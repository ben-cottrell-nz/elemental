import QtQuick 2.0
import QtQuick.Controls
import "data.js" as Data

Item {
    id: item
    property string elem: "H"

    Rectangle {
        anchors.fill: parent
        color: "black"
        ScrollView {
            anchors.fill: parent
            Text {
                color: "white"
                font.pixelSize: 18
                anchors.centerIn: parent
                text: `
                <h1>${Data.elementsData[item.elem].Cell[2]}</h1>
                <p>${Data.getFieldsForElementAsString(item.elem)}</p>
                `
            }
        }
    }
}
