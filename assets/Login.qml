import bb.cascades 1.0

Sheet {
    id: login
    peekEnabled: false
    Page {
        titleBar: TitleBar {
            title: qsTr("Login")
            dismissAction: ActionItem {
                title: qsTr("Cancel")
                onTriggered: {
                    login.close();
                }
            }
            acceptAction: ActionItem {
                title: qsTr("Login")
                onTriggered: {
                    //TODO: do login
                    login.close();
                }
            }
        }
        Container {
            topPadding: 25
            rightPadding: topPadding
            leftPadding: rightPadding
            Label {
                text: qsTr("User")
            
            }
            TextField {
                id: textboxusername
                hintText: qsTr("Write here your username")
            }
            Label {
                text: qsTr("Password")
                multiline: true
            }
            TextField {
                id: textboxpassword
                hintText: qsTr("Write here your passsword")
                inputMode: TextFieldInputMode.Password
            }
            Label {
                text: qsTr("Don't have a login?")
                topMargin: 100.0
                horizontalAlignment: HorizontalAlignment.Center
                textStyle.fontSize: FontSize.Large
            }
            Button {
                id: buttonregister
                text: qsTr("Register")
                horizontalAlignment: HorizontalAlignment.Center
                onClicked: {
                    //TODO: do something
                }

            }

        }
    }
}