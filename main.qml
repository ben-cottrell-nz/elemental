import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: "#2d2d2d"
    header: ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton {
                text: qsTr("‹")
                enabled: stackView.depth > 0
                onClicked: stack.pop()
            }
            TextField {
                id: txtSearch
                placeholderText: "Search"
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
                onTextChanged: {
                    table.filter(txtSearch.text)
                }
            }
            ToolButton {
                text: qsTr("⋮")
                onClicked: menu.open()
            }

        }
    }
    StackView {
        id: stackView
        anchors.fill: parent
        Table {
            id: table
            anchors.fill: parent
        }
    }
}
