import QtQuick 2.4

ReceiveForm {

    signal claimlinkBtnSignalIntern(string link)
    signal gotocreatenicksignal()

    function displayerrormessageintern(msg) {
        errorlabel.text=msg
        infoboxerror.visible=true
        timer.setTimeout(function(){
            infoboxerror.visible=false
        }, 5000);
    }

    function bitcashexpressclaimedintern() {
        linkedit.text=""
        text11.text=qsTr("You have successfully claimed the coins from the link.")
        toolBar2.visible=true;
        timer.setTimeout(function(){
            toolBar2.visible=false
        }, 5000);
    }

    function getmybitcashaddress()
    {
        if (receivingnickname.text==="")
        {
            return receivingaddress.text
        } else
        {
            return receivingnickname.text
        }
    }

    function getmydollaraddress()
    {
        if (receivingnickname.text==="")
        {
            return receivingaddressDo.text
        } else
        {
            return receivingnicknameDo.text
        }
    }

    function getmygoldaddress()
    {
        if (receivingnickname.text==="")
        {
            return receivingaddressGo.text
        } else
        {
            return receivingnicknameGo.text
        }
    }

    function setreceivingaddressintern(address,nick) {
        receivingaddress.text=address
        receivingaddressDo.text="dollar@"+address
        receivingaddressGo.text="gold@"+address
        receivingnickname.text=nick
        receivingnicknameDo.text="dollar"+nick
        receivingnicknameGo.text="gold"+nick
        receivingaddressEdit.text=address
        receivingaddressEditDo.text="dollar@"+address
        receivingaddressEditGo.text="gold@"+address
        receivingnicknameEdit.text=nick
        receivingnicknameEditDo.text="dollar"+nick
        receivingnicknameEditGo.text="gold"+nick
        if (nick===""){
           whitebox3.visible=true
           createnickname.visible=true
           receivingnickname2.visible=true
           label22.visible=true
        } else
        {
            whitebox3.visible=false
            createnickname.visible=false
            receivingnickname2.visible=false
            label22.visible=false
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


    copynickname.onClicked: {
        receivingnicknameEdit.selectAll()
        receivingnicknameEdit.copy()
        copynickname.text=qsTr("Copied")
        copynickname.leftPadding= 46
        copynickname.iconname="../res/icons/checkblue.png"
        timer.setTimeout(function(){
            copynickname.text=qsTr("Copy ₡ nickname to clipboard")
            copynickname.leftPadding=20
            copynickname.iconname=""
        }, 3000);
    }
    copynicknameDo.onClicked: {
        receivingnicknameEditDo.selectAll()
        receivingnicknameEditDo.copy()
        copynicknameDo.text=qsTr("Copied")
        copynicknameDo.leftPadding= 46
        copynicknameDo.iconname="../res/icons/checkblue.png"
        timer.setTimeout(function(){
            copynicknameDo.text=qsTr("Copy $ nickname to clipboard")
            copynicknameDo.leftPadding=20
            copynicknameDo.iconname=""
        }, 3000);
    }

    copynicknameGo.onClicked: {
        receivingnicknameEditGo.selectAll()
        receivingnicknameEditGo.copy()
        copynicknameGo.text=qsTr("Copied")
        copynicknameGo.leftPadding= 46
        copynicknameGo.iconname="../res/icons/checkblue.png"
        timer.setTimeout(function(){
            copynicknameGo.text=qsTr("Copy ⾦ nickname to clipboard")
            copynicknameGo.leftPadding=20
            copynicknameGo.iconname=""
        }, 3000);
    }
    copyaddress.onClicked: {
        receivingaddressEdit.selectAll()
        receivingaddressEdit.copy()
        copyaddress.text=qsTr("Copied")
        copyaddress.leftPadding= 46
        copyaddress.iconname="../res/icons/checkblue.png"
        timer.setTimeout(function(){
            copyaddress.text=qsTr("Copy ₡ address to clipboard")
            copyaddress.leftPadding=20
            copyaddress.iconname=""
        }, 3000);
    }
    copyaddressDo.onClicked: {
        receivingaddressEditDo.selectAll()
        receivingaddressEditDo.copy()
        copyaddressDo.text=qsTr("Copied")
        copyaddressDo.leftPadding= 46
        copyaddressDo.iconname="../res/icons/checkblue.png"
        timer.setTimeout(function(){
            copyaddressDo.text=qsTr("Copy $ address to clipboard")
            copyaddressDo.leftPadding=20
            copyaddressDo.iconname=""
        }, 3000);
    }
    copyaddressGo.onClicked: {
        receivingaddressEditGo.selectAll()
        receivingaddressEditGo.copy()
        copyaddressGo.text=qsTr("Copied")
        copyaddressGo.leftPadding= 46
        copyaddressGo.iconname="../res/icons/checkblue.png"
        timer.setTimeout(function(){
            copyaddressGo.text=qsTr("Copy ⾦ address to clipboard")
            copyaddressGo.leftPadding=20
            copyaddressGo.iconname=""
        }, 3000);
    }
    createnickname.onClicked: gotocreatenicksignal()
    claimcoinsbtn.onClicked: claimlinkBtnSignalIntern(linkedit.text)
}

