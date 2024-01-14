import QtQuick
import QtQuick.Controls

Page {
    anchors.fill: parent
    header: ToolBar {
        Label {
            text: qsTr("Contacts")
            font.pixelSize: 20
            anchors.centerIn: parent
        }
    }

    ListView {
        id:listview
        anchors.fill: parent
        topMargin: 48
        leftMargin: 48
        bottomMargin: 48
        rightMargin: 48
        spacing: 20
        model: ["Tony", "Miter", "Jacky", "Anonymous1", "Anonymous2"]
        delegate: ItemDelegate {
            text: modelData
            width: listview.width - listview.leftMargin - listview.rightMargin
            height: avatar.implicitHeight
            leftPadding: avatar.implicitWidth + 32
            Image {
                id: avatar
                source: "images/" + modelData.replace(" ", "_") + ".png"
            }
            onClicked: stackView.push("ConversationPage.qml", {inConversationWith: modelData})
        }
    }
}
