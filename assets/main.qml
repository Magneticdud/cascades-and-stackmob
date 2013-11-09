import bb.cascades 1.0

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
                var url = "http://api.stackmob.com/names/ea8b9687ba15443fbeeb1c2ea4cc63ce";
                var http = new XMLHttpRequest()
                var params = "{\"customer\": true}";
                http.open("PUT", url, true);

                http.setRequestHeader("Accept", "application/vnd.stackmob+json; version=0");
                http.setRequestHeader("X-StackMob-API-Key", "648d7f86-44a0-408a-b0e3-b3b56925115f");
                http.setRequestHeader("Content-type", "application/json");
                http.setRequestHeader("Content-length", params.length);
                http.setRequestHeader("Connection", "close");
                http.send(params);
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
