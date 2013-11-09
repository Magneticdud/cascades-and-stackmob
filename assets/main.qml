import bb.cascades 1.0
import "stackmob.js" as StackMob

Page {
    Container {
        topPadding: 50.0
        leftPadding: 20.0
        rightPadding: 20.0
        bottomPadding: 20.0
        TextField {
            id: textField

        }
        Button {
            horizontalAlignment: HorizontalAlignment.Center
            topMargin: 50.0
            onClicked: {
                StackMob.comm("PUT","names/ea8b9687ba15443fbeeb1c2ea4cc63ce","{\"customer\": true}")
            }
            text: qsTr("Save")

        }
        Label {
            id: log
            multiline: true
            topMargin: 50.0

        }

    }
}
