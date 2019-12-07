import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.3

Item {
    id: item1
    width: 1280
    height: 900

    signal instaSwapCheckAmountSignalIntern(bool buybitcash, double amount)
    signal instaSwapSendBtnSignalIntern(bool buybitcash, double amount, string bitcoinaddress)

    function displayerrormessageintern(msg) {
        errorlabel.text = msg
        infoboxerror.visible = true
        timer.setTimeout(function(){
            infoboxerror.visible = false
        }, 5000);
    }

    function sendinstaswapinfointern(msg) {
        transactioninfoEdit.text = msg
    }

    Rectangle {
        id: toolBar
        y: 0
        height: 44
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        color: "#e2e3f2"

        Image {
            x: 30
            y: 13
            width: 16
            height: 16
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.PreserveAspectFit
            source: "../res/assets/Notification Alerts/info-icon.png"
        }

        Button {
            onClicked: toolBar.visible = false
            anchors.right: parent.right
            anchors.rightMargin: 30
            y: 13
            width: 16
            height: 16
            anchors.verticalCenter: parent.verticalCenter
            background: Image {
                fillMode: Image.PreserveAspectFit
                source: "../res/assets/Notification Alerts/info-close.png"
            }
        }

        Label {
            id: text10
            x: 58
            y: 13
            text: qsTr("Exchange BitCash into Bitcoin and back with the help of https://InstaSwap.io")
            font.weight: Font.DemiBold
            anchors.verticalCenter: parent.verticalCenter
            textFormat: Text.AutoText
            font.pixelSize: 13
            font.family: "Montserrat SemiBold"
            color: "#3f49aa"
        }
    }

    Image {
        id: receiveicon
        y: 66
        anchors.verticalCenter: receivecap.verticalCenter
        anchors.left: layoutrect.left
        fillMode: Image.PreserveAspectFit
        source: "../res/assets/Headlines/history.png"
    }

    Text {
        id: receivecap
        y: 74
        width: 97
        color: "#202124"
        anchors.left: receiveicon.right
        anchors.leftMargin: 15
        text: qsTr("Buy/sell BitCash via https://instaswap.io")
        font.pixelSize: 20
        font.weight: Font.DemiBold
        font.family: "Montserrat SemiBold"
    }

    Rectangle {
        id: layoutrect
        anchors.top: toolBar.bottom
        anchors.topMargin: 10
        visible: false
        width: 632
        height: 210
        anchors.horizontalCenter: parent.horizontalCenter
    }

    ShadowBox {
        id: whitebox
        anchors.left: layoutrect.left
        anchors.right: layoutrect.right
        color: "white"
        radius: 3
        visible: true
        border.width: 0
        y: 119
        width: 632
        height: 648


        Label {
            id: text1
            color: "#3d3e40"
            text: qsTr("Bitcoin address")
            font.weight: Font.DemiBold
            anchors.top: amountEdit.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 30
            font.family: "Montserrat SemiBold"
            font.pixelSize: 14
            visible: radioButton2.checked
        }

        MenuTextField {
            id: bitcoinEdit
            height: 48
            anchors.left: parent.left
            anchors.leftMargin: 30
            color: acceptableInput ? "green" : "red"
            text: ""
            font.pixelSize: 14
            font.family: "Montserrat"
            font.letterSpacing: 0
            bottomPadding: 16
            padding: 16
            rightPadding: 16
            topPadding: 16
            leftPadding: 16
            anchors.top: text1.bottom
            anchors.topMargin: 20
            anchors.right: parent.right
            anchors.rightMargin: 30
            selectByMouse: true
            placeholderText: qsTr("Paste your Bitcoin address here (to receive your Bitcoin or for refunds)")
            visible: radioButton2.checked
        }

        MenuTextField {
            id: amountEdit
            width: 228
            height: 48
            font.pixelSize: 14
            font.family: "Montserrat"
            topPadding: 16
            padding: 16
            anchors.top: text4.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 30
            horizontalAlignment: Text.AlignLeft
            selectByMouse: true
            placeholderText: "0.000000000"
        }
        Rectangle {
            id: currencyrectangle
            anchors.left: amountEdit.right
            anchors.top: amountEdit.top
            anchors.bottom: amountEdit.bottom
            width: 80
            radius: 4
            border.width: 1
            border.color: "#eeeeef"
            color: "#f7f7f7"
            Text {
                id: currencytext
                color: "#4d505e"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                padding: 16
                text: "Bitcoin"
                font.pixelSize: 14
                font.weight: Font.Normal
                font.family: "Montserrat"
            }
        }

        Label {
            id: text4
            color: "#3d3e40"
            text: qsTr("Amount you want to convert")
            font.weight: Font.DemiBold
            anchors.top: parent.top
            anchors.topMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 30
            font.pixelSize: 14
            font.family: "Montserrat SemiBold"
        }

        RadioButton {
            id: radioButton1
            text: qsTr("Buy BitCash")
            checked: true
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.top: bitcoinEdit.bottom
            anchors.topMargin: 0
            onCheckedChanged: currencytext.text="Bitcoin"
        }
        RadioButton {
            id: radioButton2
            text: qsTr("Sell BitCash")
            anchors.left: radioButton1.right
            anchors.leftMargin: 8
            anchors.top: bitcoinEdit.bottom
            anchors.topMargin: 0
            onCheckedChanged: currencytext.text="BITC"
        }

        Mybutton {
            id: checkBtn
            height: 44
            text: qsTr("Check how much coins you would get")
            font.weight: Font.DemiBold
            font.pixelSize: 14
            leftPadding: 44
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.top: radioButton1.bottom
            anchors.topMargin: 8
            iconname: "../res/assets/Miscellaneous/button-send.png"
            font.capitalization: Font.MixedCase
            font.family: "Montserrat SemiBold"
            onClicked: {
                instaSwapCheckAmountSignalIntern(radioButton1.checked, amountEdit.text)
                sendBtn.enabled = false
                checkBtn.enabled = false
                timer.setTimeout(function(){
                    sendBtn.enabled = true
                    checkBtn.enabled = true
                }, 5000);
            }
        }

        Mybutton {
            id: sendBtn
            height: 44
            text: qsTr("Swap now")
            font.weight: Font.DemiBold
            font.pixelSize: 14
            leftPadding: 44
            anchors.left: checkBtn.right
            anchors.leftMargin: 20
            anchors.top: radioButton1.bottom
            anchors.topMargin: 8
            iconname: "../res/assets/Miscellaneous/button-send.png"
            font.capitalization: Font.MixedCase
            font.family: "Montserrat SemiBold"
            onClicked: {
                instaSwapSendBtnSignalIntern(radioButton1.checked, amountEdit.text, bitcoinEdit.text)
                sendBtn.enabled = false
                checkBtn.enabled = false
                timer.setTimeout(function(){
                    sendBtn.enabled = true
                    checkBtn.enabled = true
                }, 5000);
            }
        }

        Label {
            id: text12
            color: "#3d3e40"
            text: qsTr("Information about your transaction")
            font.weight: Font.DemiBold
            anchors.top: checkBtn.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 30
            font.family: "Montserrat SemiBold"
            font.pixelSize: 14
        }

        MenuTextArea {
            id: transactioninfoEdit

            height: 242
            anchors.left: parent.left
            anchors.leftMargin: 30
            text: ""
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            font.pixelSize: 14
            font.family: "Montserrat"
            font.letterSpacing: 0
            bottomPadding: 16
            padding: 16
            rightPadding: 16
            topPadding: 16
            leftPadding: 16
            anchors.top: text12.bottom
            anchors.topMargin: 20
            anchors.right: parent.right
            anchors.rightMargin: 30
            selectByMouse: true
            placeholderText: qsTr("Here you will find the deposit address and the InstaSwap transaction id...")
        }

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

    Rectangle{
        id: infobox
        visible: false
        anchors.right:parent.right
        anchors.top:parent.top
        anchors.rightMargin: 20
        anchors.topMargin: 20
        height: 44
        width: 300
        radius: 3
        border.width: 0
        color: "#4d505e"
        Label{
            text: qsTr("Removed order.")
            font.weight: Font.DemiBold
            font.pixelSize: 14
            font.family: "Montserrat SemiBold"
            color: "#ffffff"
            anchors.left:parent.left
            anchors.leftMargin: 20
            anchors.verticalCenter: parent.verticalCenter
        }
    }

    Rectangle{
        id: infoboxerror
        visible: false
        anchors.left:parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.leftMargin: 30
        anchors.bottomMargin: 30
        height: 44
        width: 240
        radius: 3
        border.width: 0
        color: "#4d505e"
        Label{
            id: errorlabel
            text: ""
            font.family: "Montserrat"
            font.pixelSize: 11
            color: "#ffffff"
            anchors.left:parent.left
            anchors.leftMargin: 20
            anchors.verticalCenter: parent.verticalCenter
        }
        Button {
            id: closebuttonerror
            onClicked: infoboxerror.visible = false
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter
            width: 16
            height: 16
            background: {
                x:0
                y:0
                fillMode: Image.PreserveAspectFit
                source: "../res/icons/closebtngrey.png"
            }
        }
    }
}
