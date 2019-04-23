import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.3

Item {
    id: item1
    width: 1280
    height: 800
    visible: true

    property real maxavailbalance: maxavailbalance
    property int selectStart
    property int selectEnd
    property alias linksendtoanyone: linksendtoanyone
    property int curPos

    property alias infoboxerror: infoboxerror
    property alias errorlabel: errorlabel

    property alias paytoEdit: paytoEdit
    property alias labelEdit: labelEdit
    property alias descriptionEdit: descriptionEdit
    property alias amountEdit: amountEdit
    property alias subtractfeeCheck: subtractfeeCheck
    property alias sendBtn: sendBtn
    property alias availableBalanceBtn: availableBalanceBtn
    property alias maxbalance: maxbalance
    property alias pasteaddress: pasteaddress
    property alias leftamountlabel: leftamountlabel

    /*********************************/
    property alias paytoEdittw: paytoEdittw
    property alias labelEdittw: labelEdittw
    property alias descriptionEdittw: descriptionEdittw
    property alias amountEdittw: amountEdittw
    property alias sendBtntw: sendBtntw
    property alias availableBalanceBtntw: availableBalanceBtntw
    property alias maxbalancetw: maxbalancetw
    property alias pasteaddresstw: pasteaddresstw
    property alias leftamountlabeltw: leftamountlabeltw

/*    property alias paytoEditin: paytoEditin
    property alias labelEditin: labelEditin
    property alias descriptionEditin: descriptionEditin
    property alias amountEditin: amountEditin
    property alias sendBtnin: sendBtnin
    property alias availableBalanceBtnin: availableBalanceBtnin
    property alias maxbalancein: maxbalancein
    property alias pasteaddressin: pasteaddressin
    property alias leftamountlabelin: leftamountlabelin*/

    property alias paytoEditre: paytoEditre
    property alias labelEditre: labelEditre
    property alias descriptionEditre: descriptionEditre
    property alias amountEditre: amountEditre
    property alias sendBtnre: sendBtnre
    property alias availableBalanceBtnre: availableBalanceBtnre
    property alias maxbalancere: maxbalancere
    property alias pasteaddressre: pasteaddressre
    property alias leftamountlabelre: leftamountlabelre
    /*************************************/
    property alias descriptionEditan: descriptionEditan
    property alias amountEditan: amountEditan
    property alias sendBtnan: sendBtnan
    property alias leftamountlabelan: leftamountlabelan

    property alias changetwbtn: changetwbtn
    property alias sendconfirmtwBtn: sendconfirmtwBtn
    property alias confirmtext: confirmtext
    property alias twitteruser: twitteruser
    property alias twitteruser2: twitteruser2
    property alias profileimage: profileimage
    property alias badgeimage: badgeimage
    property alias tabBar: tabBar

    Rectangle {
        id: toolBar
        y: 0
        height: 44
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        color: "#e2e3f3"

        Image {
            x: 30
            y: 16
            width: 16
            height: 16
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.PreserveAspectFit
            source: "../res/assets/Notification Alerts/info-icon.png"
        }

        Button {
            id: closebtn
            onClicked: toolBar.visible = false
            anchors.right: parent.right
            anchors.rightMargin: 30
            y: 12
            width: 16
            height: 16
            background: Image {
                fillMode: Image.PreserveAspectFit
                source: "../res/assets/Notification Alerts/info-close.png"
            }
        }

        Label {
            id: text10
            x: 58
            y: 13
            text: qsTr("Send BitCash to anyone with an existing BitCash address or nickname. If the recipient doesn't have BitCash, then use the ")
            font.weight: Font.DemiBold
            anchors.verticalCenter: parent.verticalCenter
            textFormat: Text.AutoText
            font.pixelSize: 13
            font.family: "Montserrat SemiBold"
            color: "#3e45ac"
        }
        Button {
            id: linksendtoanyone
            background: Rectangle {
                visible: false
            }
            anchors.left: text10.right
            y: 13
            rightPadding: 0
            leftPadding: 0
            padding: 0
            contentItem: Label {
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                text: qsTr("Send to anyone")
                font.weight: Font.DemiBold
                textFormat: Text.AutoText
                font.pixelSize: 13
                font.family: "Montserrat SemiBold"
                font.underline: true
                color: "#3f49aa"
            }
        }
        Label {
            id: text12
            anchors.left: linksendtoanyone.right
            y: 13
            text: qsTr("feature instead.")
            leftPadding: 4
            font.weight: Font.DemiBold
            anchors.leftMargin: 0
            textFormat: Text.AutoText
            font.pixelSize: 13
            font.family: "Montserrat SemiBold"
            color: "#3f49aa"
        }
    }

    property alias toolBar2: toolBar2
    property alias text11: text11

    Rectangle {
        id: toolBar2
        y: 0
        visible: false
        height: 44
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        color: "#ddf5e3"

        Image {
            x: 30
            y: 13
            width: 16
            height: 16
            fillMode: Image.PreserveAspectFit
            source: "../res/assets/Notification Alerts/success-icon.png"
        }

        Button {
            onClicked: toolBar2.visible = false
            anchors.right: parent.right
            anchors.rightMargin: 30
            y: 13
            width: 16
            height: 16
            background: Image {
                fillMode: Image.PreserveAspectFit
                source: "../res/assets/Notification Alerts/success-close.png"
            }
        }

        Label {
            id: text11
            x: 58
            y: 13
            text: ""
            font.pixelSize: 13
            font.weight: Font.DemiBold
            font.family: "Montserrat SemiBold"
            color: "#1bb846"
        }
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

    Image {
        id: sendicon
        y: 66
        anchors.verticalCenter: sendcap.verticalCenter
        anchors.left: layoutrect.left
        fillMode: Image.PreserveAspectFit
        source: "../res/assets/Headlines/send.png"
    }

    Text {
        id: sendcap
        y: 74
        anchors.left: sendicon.right
        anchors.leftMargin: 15
        text: qsTr("Send")
        font.pixelSize: 20
        font.family: "Montserrat SemiBold"
        font.weight: Font.DemiBold
    }

    ShadowBox {
        id: whitebox
        y: 122
        width: 620
        anchors.left: layoutrect.left
        anchors.right: layoutrect.right
        color: "white"
        radius: 3
        visible: true
        border.width: 0
        anchors.top: sendcap.bottom
        anchors.topMargin: 30
        //height: 590
        height: 590

        TabBar {
            id: tabBar
            font.capitalization: Font.MixedCase
            font.family: "Montserrat SemiBold"
            currentIndex: swipeView.currentIndex
            width: whitebox.width
            height: 60
            visible: true

            position: TabBar.Header
            anchors.left: whitebox.left
            anchors.leftMargin: 6
            anchors.right: whitebox.right
            anchors.rightMargin: 6
            anchors.top: whitebox.top
            anchors.topMargin: 6
            font.weight: Font.DemiBold
            font.pixelSize: 14

            TabButton {
                id: tabButton1
                y: 0
                text: qsTr("Direct")
                rightPadding: 15
                leftPadding: 58
                width: implicitWidth
                height: 60
                contentItem: Text {
                    id: textbitcash
                    x: 58
                    text: parent.text
                    leftPadding: 0
                    font: parent.font
                    opacity: enabled ? 1.0 : 0.3
                    color: "#4d505e"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
                Image {
                    id: imagebitcash
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 35
                    fillMode: Image.PreserveAspectFit
                    source: "../res/assets/Miscellaneous/bitcashicon.png"
                }
            }

            /***************************************/
            TabButton {
                id: tabButton2
                text: qsTr("Twitter")
                rightPadding: 15
                font.capitalization: Font.MixedCase
                leftPadding: 41
                width: implicitWidth
                height: 60

                contentItem: Text {
                    id: texttwitter
                    text: parent.text
                    font: parent.font
                    opacity: enabled ? 1.0 : 0.3
                    color: "#4d505e"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
                Image {
                    id: imagetwitter
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 15
                    fillMode: Image.PreserveAspectFit
                    source: "../res/assets/Miscellaneous/twittericon.png"
                }
            }
            /*TabButton {
                id: tabButton4
                text: qsTr("Instagram")
                rightPadding: 15
                font.capitalization: Font.MixedCase
                leftPadding: 41
                width: implicitWidth
                height: 60

                contentItem: Text {
                    id: textinsta
                    text: parent.text
                    font: parent.font
                    opacity: enabled ? 1.0 : 0.3
                    color: "#4d505e"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
                Image {
                    id: imageinsta
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 15
                    fillMode: Image.PreserveAspectFit
                    source: "../res/assets/Miscellaneous/instaicon.png"
                }
            }*/
            TabButton {
                id: tabButton5
                text: qsTr("Twitch")
                rightPadding: 15
                font.capitalization: Font.MixedCase
                leftPadding: 41
                width: implicitWidth
                height: 60

                contentItem: Text {
                    id: texttwitch
                    text: parent.text
                    font: parent.font
                    opacity: enabled ? 1.0 : 0.3
                    color: "#4d505e"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
                Image {
                    id: imagetwitch
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 15
                    fillMode: Image.PreserveAspectFit
                    source: "../res/assets/Miscellaneous/twitchicon.png"
                }
            }
            /***************************************/
            TabButton {
                id: tabButton3
                text: qsTr("Anyone")
                rightPadding: 15
                font.capitalization: Font.MixedCase
                leftPadding: 41
                width: implicitWidth
                height: 60

                contentItem: Text {
                    id: textanyone
                    text: parent.text
                    font: parent.font
                    opacity: enabled ? 1.0 : 0.3
                    color: "#4d505e"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
                Image {
                    id: imageanyone
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 15
                    fillMode: Image.PreserveAspectFit
                    source: "../res/assets/Miscellaneous/anyoneicon.png"
                }
            }
        }

        SwipeView {
            id: swipeView
            clip: true
            anchors.top: tabBar.bottom
            anchors.right: whitebox.right
            anchors.bottom: whitebox.bottom
            anchors.left: whitebox.left
            anchors.leftMargin: 6
            anchors.rightMargin: 6
            anchors.bottomMargin: 6
            currentIndex: tabBar.currentIndex
            Component.onCompleted: contentItem.interactive = false
            Item {
                id: direct

                Label {
                    id: text1
                    color: "#3d3e40"
                    text: qsTr("Recipient")
                    font.weight: Font.DemiBold
                    anchors.top: parent.top
                    anchors.topMargin: 30
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    font.family: "Montserrat SemiBold"
                    font.pixelSize: 14
                }

                MenuTextField {
                    id: paytoEdit
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
                    placeholderText: "Paste the BitCash address or nickname of the recipient"
                }

                MenuTextField {
                    id: labelEdit
                    y: 134
                    height: 40
                    visible: false
                    anchors.left: parent.left
                    anchors.leftMargin: 8
                    anchors.rightMargin: 8
                    anchors.right: parent.right
                    selectByMouse: true
                }

                Label {
                    id: text2
                    x: 8
                    y: 113
                    text: qsTr("Label for address book:")
                    visible: false
                    font.pixelSize: 12
                    font.family: "Montserrat"
                }

                MenuTextField {
                    id: descriptionEdit
                    height: 48
                    font.pixelSize: 14
                    font.family: "Montserrat"
                    padding: 16
                    rightPadding: 16
                    leftPadding: 16
                    topPadding: 16
                    anchors.top: text3.bottom
                    anchors.topMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    anchors.rightMargin: 30
                    anchors.right: parent.right
                    selectByMouse: true
                    placeholderText: "What are you paying for?"
                }

                Label {
                    id: text3
                    color: "#3d3e40"
                    text: qsTr("Description")
                    font.weight: Font.DemiBold
                    anchors.top: paytoEdit.bottom
                    anchors.topMargin: 25
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    font.pixelSize: 14
                    font.family: "Montserrat SemiBold"
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
                    anchors.left: amountEdit.right
                    anchors.top: amountEdit.top
                    anchors.bottom: amountEdit.bottom
                    width: 80
                    radius: 4
                    border.width: 1
                    border.color: "#eeeeef"
                    color: "#f7f7f7"
                    Text {
                        color: "#4d505e"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        padding: 16
                        text: "BITC"
                        font.pixelSize: 14
                        font.weight: Font.Normal
                        font.family: "Montserrat"
                    }
                }

                Label {
                    id: text4
                    color: "#3d3e40"
                    text: qsTr("Amount")
                    font.weight: Font.DemiBold
                    anchors.top: descriptionEdit.bottom
                    anchors.topMargin: 25
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    font.pixelSize: 14
                    font.family: "Montserrat SemiBold"
                }

                CheckBox {
                    id: subtractfeeCheck
                    text: qsTr("Subtract transaction fee from amount")
                    visible: true
                    font.weight: Font.DemiBold
                    font.pixelSize: 14
                    font.family: "Montserrat SemiBold"
                    topPadding: 30
                    anchors.top: infolabel.bottom
                    anchors.topMargin: 0
                    leftPadding: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                }

                Mybutton {
                    id: sendBtn
                    height: 44
                    text: qsTr("Send")
                    font.weight: Font.DemiBold
                    font.pixelSize: 14
                    leftPadding: 44
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    anchors.top: subtractfeeCheck.bottom
                    anchors.topMargin: 15
                    iconname: "../res/assets/Miscellaneous/button-send.png"
                    font.capitalization: Font.MixedCase
                    font.family: "Montserrat SemiBold"
                }

                Button {
                    id: availableBalanceBtn
                    x: 307
                    y: 268
                    text: qsTr("Use available balance")
                    visible: false
                    anchors.right: parent.right
                    anchors.rightMargin: 8
                }

                Label {
                    id: maxbalance
                    x: 413
                    y: 373
                    text: qsTr("0.000000 BITC")
                    visible: false
                    anchors.right: parent.right
                    anchors.rightMargin: 8
                    font.pixelSize: 12
                    font.family: "Montserrat"
                }

                Label {
                    id: text7
                    x: 349
                    y: 373
                    width: 58
                    height: 15
                    text: qsTr("Balance:")
                    visible: false
                    anchors.right: maxbalance.left
                    anchors.rightMargin: 6
                    font.pixelSize: 12
                    font.family: "Montserrat"
                }

                Button {
                    id: pasteaddress
                    x: 428
                    y: 67
                    text: qsTr("Paste")
                    visible: false
                    anchors.right: parent.right
                    anchors.rightMargin: 8
                }

                Label {
                    id: infolabel
                    color: "#3e45ac"
                    text: qsTr("You'll have")
                    font.weight: Font.DemiBold
                    font.pixelSize: 13
                    font.family: "Montserrat SemiBold"
                    rightPadding: 4
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    anchors.top: amountEdit.bottom
                    anchors.topMargin: 20
                }
                Label {
                    id: bitcashicon
                    anchors.left: infolabel.right
                    anchors.verticalCenter: infolabel.verticalCenter

                    font.pixelSize: 13
                    font.family: "Montserrat SemiBold"
                    font.weight: Font.DemiBold
                    color: "#3e45ac"
                    text: "₡"
                }
                Label {
                    id: leftamountlabel
                    color: "#3e45ac"
                    text: qsTr("0.000000000")
                    font.weight: Font.DemiBold
                    font.pixelSize: 13
                    font.family: "Montserrat SemiBold"
                    leftPadding: 0
                    anchors.left: bitcashicon.right
                    anchors.top: infolabel.top
                }
                Label {
                    id: infolabel2
                    color: "#3e45ac"
                    text: qsTr("available balance left on your acccount")
                    font.pixelSize: 13
                    font.weight: Font.DemiBold
                    font.family: "Montserrat SemiBold"
                    leftPadding: 4
                    anchors.left: leftamountlabel.right
                    anchors.top: infolabel.top
                }
            }
            //Twitter
            /******************************************/
            Item {
                id: twitter

                Label {
                    id: text1tw
                    color: "#3d3e40"
                    text: qsTr("Recipient")
                    font.weight: Font.DemiBold
                    anchors.top: parent.top
                    anchors.topMargin: 30
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    font.family: "Montserrat SemiBold"
                    font.pixelSize: 14
                }

                Rectangle {
                    id: rectangle
                    anchors.right: paytoEdittw.left
                    anchors.top: paytoEdittw.top
                    anchors.bottom: paytoEdittw.bottom
                    width: 53
                    radius: 3
                    border.width: 1
                    border.color: "#eeeeef"
                    color: "#f7f7f7"
                    Text {
                        color: "#7b7b7d"
                        anchors.horizontalCenter: parent.horizontalCenter
                        padding: 16
                        text: "@"
                        font.pixelSize: 14
                        font.family: "Montserrat"
                        anchors.verticalCenter: parent.verticalCenter
                        bottomPadding: 10
                        topPadding: 10
                        font.capitalization: Font.AllUppercase
                        font.weight: Font.Normal
                    }
                }

                MenuTextField {
                    id: paytoEdittw
                    height: 48
                    anchors.left: parent.left
                    anchors.leftMargin: 83
                    color: "#202124"
                    text: ""
                    font.pixelSize: 14
                    font.family: "Montserrat"
                    font.letterSpacing: 0
                    bottomPadding: 16
                    padding: 16
                    rightPadding: 16
                    topPadding: 16
                    leftPadding: 16
                    anchors.top: text1tw.bottom
                    anchors.topMargin: 20
                    anchors.right: parent.right
                    anchors.rightMargin: 30
                    selectByMouse: true
                    placeholderText: "Twitter's nickname of the recipient"

                    ToolTip.visible: hovered
                    ToolTip.text: qsTr("Insert the recipient's Twitter handle here.")
                    ToolTip.delay: 100
                    ToolTip.timeout: 5000
                }

                MenuTextField {
                    id: labelEdittw
                    y: 134
                    height: 40
                    visible: false
                    anchors.left: parent.left
                    anchors.leftMargin: 8
                    anchors.rightMargin: 8
                    anchors.right: parent.right
                    selectByMouse: true
                }

                Label {
                    id: text2tw
                    x: 8
                    y: 113
                    text: qsTr("Label for address book:")
                    visible: false
                    font.pixelSize: 12
                    font.family: "Montserrat"
                }

                MenuTextField {
                    id: descriptionEdittw
                    height: 48
                    font.pixelSize: 14
                    font.family: "Montserrat"
                    padding: 16
                    rightPadding: 16
                    leftPadding: 16
                    topPadding: 16
                    anchors.top: text3tw.bottom
                    anchors.topMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    anchors.rightMargin: 30
                    anchors.right: parent.right
                    selectByMouse: true
                    placeholderText: "What are you paying for?"
                }

                Label {
                    id: text3tw
                    color: "#3d3e40"
                    text: qsTr("Description")
                    font.weight: Font.DemiBold
                    anchors.top: paytoEdittw.bottom
                    anchors.topMargin: 25
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    font.pixelSize: 14
                    font.family: "Montserrat SemiBold"
                }

                MenuTextField {
                    id: amountEdittw
                    width: 228
                    height: 48
                    font.pixelSize: 14
                    font.family: "Montserrat"
                    topPadding: 16
                    padding: 16
                    anchors.top: text4tw.bottom
                    anchors.topMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    horizontalAlignment: Text.AlignLeft
                    selectByMouse: true
                    placeholderText: "0.000000000"
                }
                Rectangle {
                    anchors.left: amountEdittw.right
                    anchors.top: amountEdittw.top
                    anchors.bottom: amountEdittw.bottom
                    width: 80
                    radius: 4
                    border.width: 1
                    border.color: "#eeeeef"
                    color: "#f7f7f7"
                    Text {
                        color: "#4d505e"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        padding: 16
                        text: "BITC"
                        font.pixelSize: 14
                        font.weight: Font.Normal
                        font.family: "Montserrat"
                    }
                }

                Label {
                    id: text4tw
                    color: "#3d3e40"
                    text: qsTr("Amount")
                    font.weight: Font.DemiBold
                    anchors.top: descriptionEdittw.bottom
                    anchors.topMargin: 25
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    font.pixelSize: 14
                    font.family: "Montserrat SemiBold"
                }

                Mybutton {
                    id: sendBtntw
                    height: 44
                    text: qsTr("Send")
                    font.weight: Font.DemiBold
                    font.pixelSize: 14
                    leftPadding: 44
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    anchors.top: infolabeltw.bottom
                    anchors.topMargin: 15
                    iconname: "../res/assets/Miscellaneous/button-send.png"
                    font.capitalization: Font.MixedCase
                    font.family: "Montserrat SemiBold"
                }

                Button {
                    id: availableBalanceBtntw
                    x: 307
                    y: 268
                    text: qsTr("Use available balance")
                    visible: false
                    anchors.right: parent.right
                    anchors.rightMargin: 8
                }

                Label {
                    id: maxbalancetw
                    x: 413
                    y: 373
                    text: qsTr("0.000000 BITC")
                    visible: false
                    anchors.right: parent.right
                    anchors.rightMargin: 8
                    font.pixelSize: 12
                    font.family: "Montserrat"
                }

                Label {
                    id: text7tw
                    x: 349
                    y: 373
                    width: 58
                    height: 15
                    text: qsTr("Balance:")
                    visible: false
                    anchors.right: maxbalancetw.left
                    anchors.rightMargin: 6
                    font.pixelSize: 12
                    font.family: "Montserrat"
                }

                Button {
                    id: pasteaddresstw
                    x: 428
                    y: 67
                    text: qsTr("Paste")
                    visible: false
                    anchors.right: parent.right
                    anchors.rightMargin: 8
                }

                Label {
                    id: infolabeltw
                    color: "#3e45ac"
                    text: qsTr("You'll have")
                    font.weight: Font.DemiBold
                    font.pixelSize: 13
                    font.family: "Montserrat SemiBold"
                    rightPadding: 4
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    anchors.top: amountEdittw.bottom
                    anchors.topMargin: 20
                }
                Label {
                    id: bitcashicontw
                    anchors.left: infolabeltw.right
                    anchors.verticalCenter: infolabeltw.verticalCenter

                    font.pixelSize: 13
                    font.family: "Montserrat SemiBold"
                    font.weight: Font.DemiBold
                    color: "#3e45ac"
                    text: "₡"
                }

                Label {
                    id: leftamountlabeltw
                    color: "#3e45ac"
                    text: qsTr("0.000000000")
                    font.weight: Font.DemiBold
                    font.pixelSize: 13
                    font.family: "Montserrat SemiBold"
                    leftPadding: 0
                    anchors.left: bitcashicontw.right
                    anchors.top: infolabeltw.top
                }
                Label {
                    id: infolabel2tw
                    color: "#3e45ac"
                    text: qsTr("available balance left on your acccount")
                    font.pixelSize: 13
                    font.weight: Font.DemiBold
                    font.family: "Montserrat SemiBold"
                    leftPadding: 4
                    anchors.left: leftamountlabeltw.right
                    anchors.top: infolabeltw.top
                }
            }
            ////////////////////// INSTAGRAM /////////////////////////////////////////
            /*Item {
                id: instagram

                Label {
                    id: text1in
                    color: "#3d3e40"
                    text: qsTr("Recipient")
                    font.weight: Font.DemiBold
                    anchors.top: parent.top
                    anchors.topMargin: 30
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    font.family: "Montserrat SemiBold"
                    font.pixelSize: 14
                }

                Rectangle {
                    id: rectangle2
                    anchors.right: paytoEditin.left
                    anchors.top: paytoEditin.top
                    anchors.bottom: paytoEditin.bottom
                    width: 53
                    radius: 3
                    border.width: 1
                    border.color: "#eeeeef"
                    color: "#f7f7f7"
                    Text {
                        color: "#7b7b7d"
                        anchors.horizontalCenter: parent.horizontalCenter
                        padding: 16
                        text: "@"
                        font.pixelSize: 14
                        font.family: "Montserrat"
                        anchors.verticalCenter: parent.verticalCenter
                        bottomPadding: 10
                        topPadding: 10
                        font.capitalization: Font.AllUppercase
                        font.weight: Font.Normal
                    }
                }

                MenuTextField {
                    id: paytoEditin
                    height: 48
                    anchors.left: parent.left
                    anchors.leftMargin: 83
                    color: "#202124"
                    text: ""
                    font.pixelSize: 14
                    font.family: "Montserrat"
                    font.letterSpacing: 0
                    bottomPadding: 16
                    padding: 16
                    rightPadding: 16
                    topPadding: 16
                    leftPadding: 16
                    anchors.top: text1in.bottom
                    anchors.topMargin: 20
                    anchors.right: parent.right
                    anchors.rightMargin: 30
                    selectByMouse: true
                    placeholderText: "Instagram's nickname of the recipient"

                    ToolTip.visible: hovered
                    ToolTip.text: qsTr("Insert the recipient's Instagram handle here.")
                    ToolTip.delay: 100
                    ToolTip.timeout: 5000
                }

                MenuTextField {
                    id: labelEditin
                    y: 134
                    height: 40
                    visible: false
                    anchors.left: parent.left
                    anchors.leftMargin: 8
                    anchors.rightMargin: 8
                    anchors.right: parent.right
                    selectByMouse: true
                }

                Label {
                    id: text2in
                    x: 8
                    y: 113
                    text: qsTr("Label for address book:")
                    visible: false
                    font.pixelSize: 12
                    font.family: "Montserrat"
                }

                MenuTextField {
                    id: descriptionEditin
                    height: 48
                    font.pixelSize: 14
                    font.family: "Montserrat"
                    padding: 16
                    rightPadding: 16
                    leftPadding: 16
                    topPadding: 16
                    anchors.top: text3in.bottom
                    anchors.topMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    anchors.rightMargin: 30
                    anchors.right: parent.right
                    selectByMouse: true
                    placeholderText: "What are you paying for?"
                }

                Label {
                    id: text3in
                    color: "#3d3e40"
                    text: qsTr("Description")
                    font.weight: Font.DemiBold
                    anchors.top: paytoEditin.bottom
                    anchors.topMargin: 25
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    font.pixelSize: 14
                    font.family: "Montserrat SemiBold"
                }

                MenuTextField {
                    id: amountEditin
                    width: 228
                    height: 48
                    font.pixelSize: 14
                    font.family: "Montserrat"
                    topPadding: 16
                    padding: 16
                    anchors.top: text4in.bottom
                    anchors.topMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    horizontalAlignment: Text.AlignLeft
                    selectByMouse: true
                    placeholderText: "0.000000000"
                }
                Rectangle {
                    anchors.left: amountEditin.right
                    anchors.top: amountEditin.top
                    anchors.bottom: amountEditin.bottom
                    width: 80
                    radius: 4
                    border.width: 1
                    border.color: "#eeeeef"
                    color: "#f7f7f7"
                    Text {
                        color: "#4d505e"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        padding: 16
                        text: "BITC"
                        font.pixelSize: 14
                        font.weight: Font.Normal
                        font.family: "Montserrat"
                    }
                }

                Label {
                    id: text4in
                    color: "#3d3e40"
                    text: qsTr("Amount")
                    font.weight: Font.DemiBold
                    anchors.top: descriptionEditin.bottom
                    anchors.topMargin: 25
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    font.pixelSize: 14
                    font.family: "Montserrat SemiBold"
                }

                Mybutton {
                    id: sendBtnin
                    height: 44
                    text: qsTr("Send")
                    font.weight: Font.DemiBold
                    font.pixelSize: 14
                    leftPadding: 44
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    anchors.top: infolabelin.bottom
                    anchors.topMargin: 15
                    iconname: "../res/assets/Miscellaneous/button-send.png"
                    font.capitalization: Font.MixedCase
                    font.family: "Montserrat SemiBold"
                }

                Button {
                    id: availableBalanceBtnin
                    x: 307
                    y: 268
                    text: qsTr("Use available balance")
                    visible: false
                    anchors.right: parent.right
                    anchors.rightMargin: 8
                }

                Label {
                    id: maxbalancein
                    x: 413
                    y: 373
                    text: qsTr("0.000000 BITC")
                    visible: false
                    anchors.right: parent.right
                    anchors.rightMargin: 8
                    font.pixelSize: 12
                    font.family: "Montserrat"
                }

                Label {
                    id: text7in
                    x: 349
                    y: 373
                    width: 58
                    height: 15
                    text: qsTr("Balance:")
                    visible: false
                    anchors.right: maxbalancein.left
                    anchors.rightMargin: 6
                    font.pixelSize: 12
                    font.family: "Montserrat"
                }

                Button {
                    id: pasteaddressin
                    x: 428
                    y: 67
                    text: qsTr("Paste")
                    visible: false
                    anchors.right: parent.right
                    anchors.rightMargin: 8
                }

                Label {
                    id: infolabelin
                    color: "#3e45ac"
                    text: qsTr("You'll have")
                    font.weight: Font.DemiBold
                    font.pixelSize: 13
                    font.family: "Montserrat SemiBold"
                    rightPadding: 4
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    anchors.top: amountEditin.bottom
                    anchors.topMargin: 20
                }
                Label {
                    id: bitcashiconin
                    anchors.left: infolabelin.right
                    anchors.verticalCenter: infolabelin.verticalCenter

                    font.pixelSize: 13
                    font.family: "Montserrat SemiBold"
                    font.weight: Font.DemiBold
                    color: "#3e45ac"
                    text: "₡"
                }

                Label {
                    id: leftamountlabelin
                    color: "#3e45ac"
                    text: qsTr("0.000000000")
                    font.weight: Font.DemiBold
                    font.pixelSize: 13
                    font.family: "Montserrat SemiBold"
                    leftPadding: 0
                    anchors.left: bitcashiconin.right
                    anchors.top: infolabelin.top
                }
                Label {
                    id: infolabel2in
                    color: "#3e45ac"
                    text: qsTr("available balance left on your acccount")
                    font.pixelSize: 13
                    font.weight: Font.DemiBold
                    font.family: "Montserrat SemiBold"
                    leftPadding: 4
                    anchors.left: leftamountlabelin.right
                    anchors.top: infolabelin.top
                }
            }*/
            ////////////////////////////////////////// TWITCH /////////////////////////////////////////////
            Item {
                id: twitch

                Label {
                    id: text1re
                    color: "#3d3e40"
                    text: qsTr("Recipient")
                    font.weight: Font.DemiBold
                    anchors.top: parent.top
                    anchors.topMargin: 30
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    font.family: "Montserrat SemiBold"
                    font.pixelSize: 14
                }

                Rectangle {
                    id: rectangle3
                    anchors.right: paytoEditre.left
                    anchors.top: paytoEditre.top
                    anchors.bottom: paytoEditre.bottom
                    width: 53
                    radius: 3
                    border.width: 1
                    border.color: "#eeeeef"
                    color: "#f7f7f7"
                    Text {
                        color: "#7b7b7d"
                        anchors.horizontalCenter: parent.horizontalCenter
                        padding: 16
                        text: "@"
                        font.pixelSize: 14
                        font.family: "Montserrat"
                        anchors.verticalCenter: parent.verticalCenter
                        bottomPadding: 10
                        topPadding: 10
                        font.capitalization: Font.AllUppercase
                        font.weight: Font.Normal
                    }
                }

                MenuTextField {
                    id: paytoEditre
                    height: 48
                    anchors.left: parent.left
                    anchors.leftMargin: 83
                    color: "#202124"
                    text: ""
                    font.pixelSize: 14
                    font.family: "Montserrat"
                    font.letterSpacing: 0
                    bottomPadding: 16
                    padding: 16
                    rightPadding: 16
                    topPadding: 16
                    leftPadding: 16
                    anchors.top: text1re.bottom
                    anchors.topMargin: 20
                    anchors.right: parent.right
                    anchors.rightMargin: 30
                    selectByMouse: true
                    placeholderText: "Twitch's nickname of the recipient"

                    ToolTip.visible: hovered
                    ToolTip.text: qsTr("Insert the recipient's Twitch handle here.")
                    ToolTip.delay: 100
                    ToolTip.timeout: 5000
                }

                MenuTextField {
                    id: labelEditre
                    y: 134
                    height: 40
                    visible: false
                    anchors.left: parent.left
                    anchors.leftMargin: 8
                    anchors.rightMargin: 8
                    anchors.right: parent.right
                    selectByMouse: true
                }

                Label {
                    id: text2re
                    x: 8
                    y: 113
                    text: qsTr("Label for address book:")
                    visible: false
                    font.pixelSize: 12
                    font.family: "Montserrat"
                }

                MenuTextField {
                    id: descriptionEditre
                    height: 48
                    font.pixelSize: 14
                    font.family: "Montserrat"
                    padding: 16
                    rightPadding: 16
                    leftPadding: 16
                    topPadding: 16
                    anchors.top: text3re.bottom
                    anchors.topMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    anchors.rightMargin: 30
                    anchors.right: parent.right
                    selectByMouse: true
                    placeholderText: "What are you paying for?"
                }

                Label {
                    id: text3re
                    color: "#3d3e40"
                    text: qsTr("Description")
                    font.weight: Font.DemiBold
                    anchors.top: paytoEditre.bottom
                    anchors.topMargin: 25
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    font.pixelSize: 14
                    font.family: "Montserrat SemiBold"
                }

                MenuTextField {
                    id: amountEditre
                    width: 228
                    height: 48
                    font.pixelSize: 14
                    font.family: "Montserrat"
                    topPadding: 16
                    padding: 16
                    anchors.top: text4re.bottom
                    anchors.topMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    horizontalAlignment: Text.AlignLeft
                    selectByMouse: true
                    placeholderText: "0.000000000"
                }
                Rectangle {
                    anchors.left: amountEditre.right
                    anchors.top: amountEditre.top
                    anchors.bottom: amountEditre.bottom
                    width: 80
                    radius: 4
                    border.width: 1
                    border.color: "#eeeeef"
                    color: "#f7f7f7"
                    Text {
                        color: "#4d505e"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        padding: 16
                        text: "BITC"
                        font.pixelSize: 14
                        font.weight: Font.Normal
                        font.family: "Montserrat"
                    }
                }

                Label {
                    id: text4re
                    color: "#3d3e40"
                    text: qsTr("Amount")
                    font.weight: Font.DemiBold
                    anchors.top: descriptionEditre.bottom
                    anchors.topMargin: 25
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    font.pixelSize: 14
                    font.family: "Montserrat SemiBold"
                }

                Mybutton {
                    id: sendBtnre
                    height: 44
                    text: qsTr("Send")
                    font.weight: Font.DemiBold
                    font.pixelSize: 14
                    leftPadding: 44
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    anchors.top: infolabelre.bottom
                    anchors.topMargin: 15
                    iconname: "../res/assets/Miscellaneous/button-send.png"
                    font.capitalization: Font.MixedCase
                    font.family: "Montserrat SemiBold"
                }

                Button {
                    id: availableBalanceBtnre
                    x: 307
                    y: 268
                    text: qsTr("Use available balance")
                    visible: false
                    anchors.right: parent.right
                    anchors.rightMargin: 8
                }

                Label {
                    id: maxbalancere
                    x: 413
                    y: 373
                    text: qsTr("0.000000 BITC")
                    visible: false
                    anchors.right: parent.right
                    anchors.rightMargin: 8
                    font.pixelSize: 12
                    font.family: "Montserrat"
                }

                Label {
                    id: text7re
                    x: 349
                    y: 373
                    width: 58
                    height: 15
                    text: qsTr("Balance:")
                    visible: false
                    anchors.right: maxbalancere.left
                    anchors.rightMargin: 6
                    font.pixelSize: 12
                    font.family: "Montserrat"
                }

                Button {
                    id: pasteaddressre
                    x: 428
                    y: 67
                    text: qsTr("Paste")
                    visible: false
                    anchors.right: parent.right
                    anchors.rightMargin: 8
                }

                Label {
                    id: infolabelre
                    color: "#3e45ac"
                    text: qsTr("You'll have")
                    font.weight: Font.DemiBold
                    font.pixelSize: 13
                    font.family: "Montserrat SemiBold"
                    rightPadding: 4
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    anchors.top: amountEditre.bottom
                    anchors.topMargin: 20
                }
                Label {
                    id: bitcashiconre
                    anchors.left: infolabelre.right
                    anchors.verticalCenter: infolabelre.verticalCenter

                    font.pixelSize: 13
                    font.family: "Montserrat SemiBold"
                    font.weight: Font.DemiBold
                    color: "#3e45ac"
                    text: "₡"
                }

                Label {
                    id: leftamountlabelre
                    color: "#3e45ac"
                    text: qsTr("0.000000000")
                    font.weight: Font.DemiBold
                    font.pixelSize: 13
                    font.family: "Montserrat SemiBold"
                    leftPadding: 0
                    anchors.left: bitcashiconre.right
                    anchors.top: infolabelre.top
                }
                Label {
                    id: infolabel2re
                    color: "#3e45ac"
                    text: qsTr("available balance left on your acccount")
                    font.pixelSize: 13
                    font.weight: Font.DemiBold
                    font.family: "Montserrat SemiBold"
                    leftPadding: 4
                    anchors.left: leftamountlabelre.right
                    anchors.top: infolabelre.top
                }
            }
            /*******************************************************/
            //Anyone
            Item {
                id: anyone

                Rectangle {
                    id: bluebox
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.leftMargin: 30
                    anchors.topMargin: 20
                    anchors.rightMargin: 30
                    color: "#e2e3f3"
                    radius: 3
                    border.color: "#3e45ac"
                    border.width: 1

                    height: 103

                    Text {
                        id: text13
                        color: "#3e45ac"
                        text: qsTr("If you want to send BitCash to someone without an existing BitCash address, you can simply create a BitCash link and send it via email, SMS or social media.")
                        anchors.right: parent.right
                        anchors.rightMargin: 30
                        font.weight: Font.DemiBold
                        font.family: "Montserrat SemiBold"
                        lineHeight: 1.5
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 20
                        anchors.left: infoicon.right
                        anchors.leftMargin: 10
                        anchors.top: parent.top
                        anchors.topMargin: 20
                        wrapMode: Text.WordWrap
                        font.pixelSize: 13
                    }

                    Image {
                        id: infoicon
                        anchors.top: parent.top
                        anchors.topMargin: 20
                        anchors.leftMargin: 20
                        anchors.left: parent.left
                        fillMode: Image.PreserveAspectFit
                        source: "../res/assets/Notification Alerts/info-icon.png"
                    }
                }

                MenuTextField {
                    id: descriptionEditan
                    height: 48
                    font.pixelSize: 14
                    font.family: "Montserrat"
                    padding: 16
                    rightPadding: 16
                    leftPadding: 16
                    topPadding: 16
                    anchors.top: text3an.bottom
                    anchors.topMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    anchors.rightMargin: 30
                    anchors.right: parent.right
                    selectByMouse: true
                    placeholderText: "What are you paying for?"
                }

                Label {
                    id: text3an
                    color: "#3d3e40"
                    text: qsTr("Description")
                    font.weight: Font.DemiBold
                    anchors.top: bluebox.bottom
                    anchors.topMargin: 30
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    font.pixelSize: 14
                    font.family: "Montserrat SemiBold"
                }

                MenuTextField {
                    id: amountEditan
                    width: 228
                    height: 48
                    font.pixelSize: 14
                    font.family: "Montserrat"
                    topPadding: 16
                    padding: 16
                    anchors.top: text4an.bottom
                    anchors.topMargin: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    horizontalAlignment: Text.AlignLeft
                    selectByMouse: true
                    placeholderText: "0.000000000"
                }
                Rectangle {
                    anchors.left: amountEditan.right
                    anchors.top: amountEditan.top
                    anchors.bottom: amountEditan.bottom
                    width: 80
                    radius: 4
                    border.width: 1
                    border.color: "#eeeeef"
                    color: "#f7f7f7"
                    Text {
                        color: "#4d505e"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        padding: 16
                        text: "BITC"
                        font.pixelSize: 14
                        font.weight: Font.Normal
                        font.family: "Montserrat"
                    }
                }

                Label {
                    id: text4an
                    color: "#3d3e40"
                    text: qsTr("Amount")
                    font.weight: Font.DemiBold
                    anchors.top: descriptionEditan.bottom
                    anchors.topMargin: 25
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    font.pixelSize: 14
                    font.family: "Montserrat SemiBold"
                }

                Mybutton {
                    id: sendBtnan
                    height: 44
                    text: qsTr("Send")
                    font.weight: Font.DemiBold
                    font.pixelSize: 14
                    leftPadding: 44
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    anchors.top: infolabelan.bottom
                    anchors.topMargin: 15
                    iconname: "../res/assets/Miscellaneous/button-send.png"
                    font.capitalization: Font.MixedCase
                    font.family: "Montserrat SemiBold"
                }

                Label {
                    id: infolabelan
                    color: "#3e45ac"
                    text: qsTr("You'll have")
                    font.weight: Font.DemiBold
                    font.pixelSize: 13
                    font.family: "Montserrat SemiBold"
                    rightPadding: 4
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    anchors.top: amountEditan.bottom
                    anchors.topMargin: 20
                }
                Label {
                    id: bitcashiconan
                    anchors.left: infolabelan.right
                    anchors.verticalCenter: infolabelan.verticalCenter

                    font.pixelSize: 13
                    font.family: "Montserrat SemiBold"
                    font.weight: Font.DemiBold
                    color: "#3e45ac"
                    text: "₡"
                }

                Label {
                    id: leftamountlabelan
                    color: "#3e45ac"
                    text: qsTr("0.000000000")
                    font.weight: Font.DemiBold
                    font.pixelSize: 13
                    font.family: "Montserrat SemiBold"
                    leftPadding: 0
                    anchors.left: bitcashiconan.right
                    anchors.top: infolabelan.top
                }
                Label {
                    id: infolabel2an
                    color: "#3e45ac"
                    text: qsTr("available balance left on your acccount")
                    font.pixelSize: 13
                    font.weight: Font.DemiBold
                    font.family: "Montserrat SemiBold"
                    leftPadding: 4
                    anchors.left: leftamountlabelan.right
                    anchors.top: infolabelan.top
                }
            }
        }
    }

    property alias othertransactionBtn: othertransactionBtn
    property alias viewaccounthistory: viewaccounthistory
    property alias whitebox: whitebox
    property alias whitebox2: whitebox2
    property alias whitebox3: whitebox3
    property alias gotooverview: gotooverview

    ShadowBox {
        id: whitebox2
        y: 122
        width: 620
        anchors.left: layoutrect.left
        anchors.right: layoutrect.right
        color: "white"
        radius: 3
        border.width: 0
        anchors.top: sendcap.bottom
        anchors.topMargin: 30
        visible: false
        height: 542

        Image {
            id: successicon
            width: 81
            height: 81
            anchors.top: parent.top
            anchors.topMargin: 66
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
            source: "../res/icons/successicon.png"
        }
        Label {
            id: caption
            color: "#202124"
            text: qsTr("Your BitCash was sent successfully!")
            font.weight: Font.DemiBold
            anchors.topMargin: 20
            anchors.top: successicon.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 18
            font.family: "Montserrat SemiBold"
        }
        Mybutton {
            id: othertransactionBtn
            text: qsTr("Make another transaction")
            font.weight: Font.DemiBold
            font.pixelSize: 13
            font.family: "Montserrat SemiBold"
            leftPadding: 44
            anchors.topMargin: 40
            anchors.top: info2.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            iconname: "../res/assets/Navigation/send-inactive.png"
            font.capitalization: Font.MixedCase
            btncolor: "white"
            btncolordown: "white"
            txtcolor: "#4950b1"
            txtcolordown: "#4950b1"
        }
        Mybutton {
            id: viewaccounthistory
            text: qsTr("View account history")
            font.weight: Font.DemiBold
            font.pixelSize: 13
            font.family: "Montserrat SemiBold"
            leftPadding: 44
            anchors.topMargin: 4
            anchors.top: othertransactionBtn.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            iconname: "../res/assets/Navigation/history-inactive.png"
            font.capitalization: Font.MixedCase
            btncolor: "white"
            btncolordown: "white"
            txtcolor: "#4950b1"
            txtcolordown: "#4950b1"
        }
        Mybutton {
            id: gotooverview
            text: qsTr("Go back to Overview")
            font.weight: Font.DemiBold
            font.pixelSize: 13
            font.family: "Montserrat SemiBold"
            leftPadding: 44
            anchors.topMargin: 4
            anchors.top: viewaccounthistory.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            iconname: "../res/assets/Navigation/overview-inactive.png"
            font.capitalization: Font.MixedCase
            btncolor: "white"
            btncolordown: "white"
            txtcolor: "#4950b1"
            txtcolordown: "#4950b1"
        }

        Label {
            id: info1
            x: -5
            y: 6
            color: "#4d505e"
            text: qsTr("It may take a few minutes to be received by the recipient as the")
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 14
            font.family: "Montserrat"
            anchors.top: caption.bottom
            anchors.topMargin: 10
            font.weight: Font.Normal
        }

        Label {
            id: info2
            x: -7
            color: "#4d505e"
            text: qsTr("network sends and secures your transaction.")
            anchors.top: info1.bottom
            anchors.topMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 14
            font.family: "Montserrat"
            anchors.horizontalCenterOffset: 0
            font.weight: Font.Normal
        }
    }

    ShadowBox {
        id: whitebox3
        y: 122
        width: 620
        anchors.left: layoutrect.left
        anchors.right: layoutrect.right
        color: "white"
        radius: 2
        border.width: 0
        anchors.top: sendcap.bottom
        anchors.topMargin: 30
        visible: false
        height: 410
        Image {
            id: profileimage
            y: 16
            width: 80
            height: 80
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
            source: "../res/assets/Notification Alerts/info-icon.png"
        }
        Image {
            id: profileimagemask
            y: 16
            width: 80
            height: 80
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
            source: "../res/assets/mask.png"
        }
        Image {
            id: badgeimage
            x: 320
            y: 16
            width: 36
            height: 36
            anchors.verticalCenterOffset: 27
            anchors.verticalCenter: profileimage.verticalCenter
            anchors.horizontalCenterOffset: 27
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
            source: "../res/assets/Miscellaneous/twitter-badge.png"
        }
        Label {
            id: twitteruser
            x: -7
            color: "#4d505e"
            text: qsTr("username")
            anchors.top: profileimage.bottom
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 16
            font.family: "Montserrat Bold"
            anchors.horizontalCenterOffset: 0
            font.weight: Font.Bold
        }
        Label {
            id: twitteruser2
            x: -7
            color: "#4d505e"
            text: qsTr("@username")
            anchors.top: twitteruser.bottom
            anchors.topMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 14
            font.family: "Montserrat"
            anchors.horizontalCenterOffset: 0
            font.weight: Font.Normal
        }
        Text {
            id: confirmtext
            color: "#4d505e"
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 30
            text: qsTr("You're about to send 000 BITC for to @el. Please confirm this transaction.")
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
            anchors.top: twitteruser2.bottom
            anchors.topMargin: 20
            visible: true
            font.pixelSize: 14
            font.family: "Montserrat"
            font.weight: Font.Normal
        }
        Mybutton {
            id: sendconfirmtwBtn
            height: 44
            text: qsTr("Send")
            font.weight: Font.DemiBold
            font.pixelSize: 14
            leftPadding: 44
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: confirmtext.bottom
            anchors.topMargin: 30
            iconname: "../res/assets/Miscellaneous/button-send.png"
            font.capitalization: Font.MixedCase
            font.family: "Montserrat SemiBold"
        }
        Mybutton {
            id: changetwbtn
            text: qsTr("Change recipient")
            leftPadding: 10
            font.weight: Font.DemiBold
            font.pixelSize: 13
            font.family: "Montserrat SemiBold"
            anchors.topMargin: 20
            anchors.top: sendconfirmtwBtn.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.capitalization: Font.MixedCase
            btncolor: "white"
            btncolordown: "white"
            txtcolor: "#4950b1"
            txtcolordown: "#4950b1"
        }
    }

    Rectangle {
        id: infoboxerror
        visible: false
        anchors.left: parent.left
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
        Label {
            id: errorlabel
            text: ""
            font.family: "Montserrat"
            font.pixelSize: 11
            color: "#ffffff"
            anchors.left: parent.left
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
            background: Image {
                x: 0
                y: 0
                fillMode: Image.PreserveAspectFit
                source: "../res/icons/closebtngrey.png"
            }
        }
    }
}
