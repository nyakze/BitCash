import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.3

Item {
    id: item1
    visible: false
    width: parent.width
    height: parent.height

    signal generateBillBitCashSignalintern(int denomination)

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
    height: 416

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
        text: qsTr("Print paper BitCash bills")
        anchors.top: parent.top
        anchors.topMargin: 30
        font.pixelSize: 18
        font.family: "Montserrat SemiBold"
        font.weight: Font.DemiBold
    }

    Label {
        id: text1
        color: "#202124"
        text: qsTr("Bill denomination")
        font.weight: Font.DemiBold
        anchors.top: sendcap.bottom
        anchors.topMargin: 30
        anchors.left: parent.left
        anchors.leftMargin: 30
        font.family: "Montserrat SemiBold"
        font.pixelSize: 14
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
        id: generateBtn
        height: 44
        text: qsTr("Generate bill")
        leftPadding: 20
        rightPadding: 20
        font.weight: Font.DemiBold
        anchors.top: radioButton10.bottom
        font.family: "Montserrat SemiBold"
        font.capitalization: Font.MixedCase
        anchors.leftMargin: 30
        anchors.topMargin: 20
        font.pixelSize: 14
        anchors.left: parent.left
        onClicked: {
            if (radioButton1.checked) {
                generateBillBitCashSignalintern(10)
            } else
            if (radioButton2.checked) {
                generateBillBitCashSignalintern(20)
            } else
            if (radioButton5.checked) {
                generateBillBitCashSignalintern(50)
            } else
            if (radioButton10.checked) {
                generateBillBitCashSignalintern(100)
            } else
            if (radioButton20.checked) {
                generateBillBitCashSignalintern(200)
            } else
            if (radioButton50.checked) {
                generateBillBitCashSignalintern(500)
            } else
            if (radioButton100.checked) {
                generateBillBitCashSignalintern(1000)
            }
            item1.visible = false
        }
    }

    RadioButton {
        id: radioButton1
        text: qsTr("₡10")
        anchors.top: text1.bottom
        anchors.topMargin: 30
        anchors.left: parent.left
        anchors.leftMargin: 30
    }
    RadioButton {
        id: radioButton2
        text: qsTr("₡20")
        anchors.top: radioButton1.bottom
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 30
    }
    RadioButton {
        id: radioButton5
        text: qsTr("₡50")
        anchors.top: radioButton2.bottom
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 30
    }
    RadioButton {
        id: radioButton10
        text: qsTr("₡100")
        checked: true
        anchors.top: radioButton5.bottom
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 30
    }
    RadioButton {
        id: radioButton20
        text: qsTr("₡200")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: text1.bottom
        anchors.topMargin: 30
    }
    RadioButton {
        id: radioButton50
        text: qsTr("₡500")
        anchors.left: radioButton20.left
        anchors.leftMargin: 0
        anchors.top: radioButton20.bottom
        anchors.topMargin: 0
    }
    RadioButton {
        id: radioButton100
        text: qsTr("₡1000")
        anchors.left: radioButton20.left
        anchors.leftMargin: 0
        anchors.top: radioButton50.bottom
        anchors.topMargin: 0
    }
    }
}
