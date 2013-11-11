import bb.cascades 1.0

Sheet {
    id: settings
    peekEnabled: false
    Page {
        titleBar: TitleBar {
            title: qsTr("Settings")
            dismissAction: ActionItem {
                title: qsTr("Cancel")
                onTriggered: {
                    settings.close();
                }
            }
            acceptAction: ActionItem {
                title: qsTr("Save")
                onTriggered: {
                    //TODO: save
                    settings.close();
                }
            }
        }
        Container {
            topPadding: 25
            rightPadding: topPadding
            leftPadding: rightPadding
            Label {
                text: qsTr("Schema: (right now it's hardcoded)")
                multiline: true

            }
            RadioGroup {
                Option {
                    text: "names (public)"
                    selected: true
                    enabled: false

                }
                Option {
                    enabled: false
                    text: "orders (private with user login)"

                }
                Option {
                    enabled: false
                    text: "custom"
                
                }
            }
            TextField {
                id: textboxschema
                hintText: qsTr("Write here your stackmob schema")
                visible: false
            }
            Label {
                text: qsTr("StackMob key and API version can be changed in stackmob.js.")
                multiline: true
            }
        }
    }
}