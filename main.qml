import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Elements")
    color: "#2d2d2d"
    header: ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton {
                visible: stackView.depth > 1
                text: "🡄 Back"
                onClicked: stackView.pop()
            }
            TextField {
                id: txtSearch
                visible: stackView.depth == 1
                placeholderText: "Search"
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
                onTextChanged: {
                    table.filter(txtSearch.text)
                }
            }
        }
    }
    Component {
        id: elemInfo
        ElemInfo {
            property string currentElem
            elem: currentElem
        }
    }

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Table {
            id: table
            anchors.fill: parent
            onCellClicked: function (elem) {
                stackView.push(elemInfo, { currentElem: elem})
                //elemInfo.createObject(stackView, { currentElem: elem})
            }
        }
    }
}
