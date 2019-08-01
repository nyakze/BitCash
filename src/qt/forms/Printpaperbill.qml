import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.3

Item {
    id: item1
    visible: false
    width: parent.width
    height: parent.height

    signal printfrontbillSignalintern()
    signal printbackbillSignalintern()
    signal savebillSignalintern()
    signal savebillbackSignalintern()
    signal openpictureSignalintern()

    Rectangle{
        id: screen
        radius: 0
        color: "#000000"
        opacity: 0.5
        border.color: "#00000000"
        border.width: 0
        width: parent.width
        height: parent.height

    }
    Rectangle {
        id: window
        color: "#ffffff"
        radius: 5
        anchors.top: screen.top
        anchors.topMargin: 40
        anchors.horizontalCenter: screen.horizontalCenter
    border.color: "#ffffff"
    border.width: 1
    width: 690
    height: 333

    Button {
        id: closebtn
        onClicked: item1.visible = false
        anchors.right: parent.right
        anchors.rightMargin: 30
        width: 16
        height: 16
        anchors.top: parent.top
        anchors.topMargin: 30
        background: Image {
            fillMode: Image.PreserveAspectFit
            source: "../res/assets/Miscellaneous/close-icon.png"
        }
    }

    Image {
        id: sendicon
        y: 66
        anchors.leftMargin: 30
        anchors.verticalCenter: sendcap.verticalCenter
        anchors.left: parent.left
        fillMode: Image.PreserveAspectFit
        source: "../res/assets/Navigation/backup-icon.png"
    }

    Text {
        id: sendcap
        color: "#202124"
        anchors.left: sendicon.right
        anchors.leftMargin: 10
        text: qsTr("Print paper BitCash Dollar bills")
        anchors.top: parent.top
        anchors.topMargin: 30
        font.pixelSize: 18
        font.family: "Montserrat SemiBold"
        font.weight: Font.DemiBold
    }

    Text {
        id: infotext
        color: "#202124"
        anchors.left: sendicon.right
        anchors.leftMargin: -19
        text: qsTr("You can print your own face/logo on the bill!")
        anchors.top: parent.top
        anchors.topMargin: 272
        font.pixelSize: 14
        font.family: "Montserrat"
        font.weight: Font.Normal
    }

    Timer {
        id: timer
        function setTimeout(cb, delayTime) {
            timer.interval = delayTime;
            timer.repeat = false;
            timer.triggered.connect(cb);
            timer.triggered.connect(function() {
                timer.triggered.disconnect(cb); // This is important
            });
            timer.start();
        }
    }

    Mybutton {
        id: printfrontBtn
        height: 44
        text: qsTr("Print front side")
        leftPadding: 20
        rightPadding: 20
        font.weight: Font.DemiBold
        anchors.top: sendcap.bottom
        font.family: "Montserrat SemiBold"
        font.capitalization: Font.MixedCase
        anchors.leftMargin: 30
        anchors.topMargin: 30
        font.pixelSize: 14
        anchors.left: parent.left
        onClicked: printfrontbillSignalintern()
    }
    Mybutton {
        id: printbackBtn
        height: 44
        text: qsTr("Print back side")
        leftPadding: 20
        rightPadding: 20
        font.weight: Font.DemiBold
        anchors.top: printfrontBtn.bottom
        font.family: "Montserrat SemiBold"
        font.capitalization: Font.MixedCase
        anchors.leftMargin: 30
        anchors.topMargin: 20
        font.pixelSize: 14
        anchors.left: parent.left
        onClicked: printbackbillSignalintern()
    }

    Mybutton {
        id: savefrontBtn
        x: 2
        y: 82
        height: 44
        text: qsTr("Save as picture...")
        focusPolicy: Qt.StrongFocus
        anchors.topMargin: 30
        anchors.top: sendcap.bottom
        anchors.left: printfrontBtn.right
        font.capitalization: Font.MixedCase
        font.weight: Font.DemiBold
        font.family: "Montserrat SemiBold"
        anchors.leftMargin: 20
        rightPadding: 20
        leftPadding: 20
        font.pixelSize: 14
        onClicked: savebillSignalintern()
    }

    Mybutton {
        id: openPictureBtn
        x: 210
        y: 146
        height: 44
        text: qsTr("Open a picture of your own face/logo...")
        anchors.topMargin: 159
        font.pixelSize: 14
        focusPolicy: Qt.StrongFocus
        anchors.leftMargin: 30
        anchors.left: parent.left
        font.weight: Font.DemiBold
        font.family: "Montserrat SemiBold"
        font.capitalization: Font.MixedCase
        leftPadding: 20
        rightPadding: 20
        anchors.top: sendcap.bottom
        onClicked: openpictureSignalintern()
    }

    Mybutton {
        id: savebackBtn
        y: 146
        height: 44
        text: qsTr("Save as picture...")
        anchors.topMargin: 0
        font.pixelSize: 14
        focusPolicy: Qt.StrongFocus
        anchors.leftMargin: 22
        anchors.left: printbackBtn.right
        font.family: "Montserrat SemiBold"
        font.weight: Font.DemiBold
        leftPadding: 20
        font.capitalization: Font.MixedCase
        rightPadding: 20
        anchors.top: printbackBtn.top
        onClicked: savebillbackSignalintern()
    }
    }
}
