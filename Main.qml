import QtQuick
import QtQuick.Controls

Window {
    id: window
    width: 540
    height: 960
    visible: true
    title: qsTr("ECC-Based-Ecrypted-Communicating-System")

    StackView {
        property alias stackView: stackView
        id: stackView
        anchors.fill: parent
        initialItem: ContactPage{}
    }
}
