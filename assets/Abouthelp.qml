import bb.cascades 1.2

Sheet {
    peekEnabled: false
    Page {
        titleBar: TitleBar {
            title: qsTr("Help/About")
            dismissAction: ActionItem {
                title: qsTr("Back")
                onTriggered: {
                    abouthelp.close();
                }
            }
        }
        Container {
            topPadding: 25
            rightPadding: topPadding
            leftPadding: rightPadding
            Label {
                multiline: false
                text: "StackMob API Demo"
                horizontalAlignment: HorizontalAlignment.Center
                textStyle.fontStyle: FontStyle.Default
                textStyle.fontWeight: FontWeight.Bold
            }
            Label {
                multiline: true
                text: qsTr("Created by <a href='http://www.dandandin.net'>Dandandin.net</a> - © 2013")
                horizontalAlignment: HorizontalAlignment.Center
                textFormat: TextFormat.Html
                textStyle.lineHeight: 2.0
            }
            Label {
                multiline: true
                text: qsTr("What's this?")
                horizontalAlignment: HorizontalAlignment.Center
                textStyle.fontWeight: FontWeight.W500
                textStyle.fontSize: FontSize.Large
            }
            Label {
                multiline: true
                text: qsTr("Well, you're not supposed to see this sheet, because it's just a placeholder")
                horizontalAlignment: HorizontalAlignment.Center
            }
        }
    }
}