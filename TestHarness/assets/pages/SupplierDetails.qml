import bb.cascades 1.0
import odata 1.0
import "controls" 1.0

Page {
    property string dataSource
    property variant dataModel

    actions: [
        ActionItem {
            title: qsTr("Update")
            imageSource: "asset:///icons/ic_edit.png"
            ActionBar.placement: ActionBarPlacement.OnBar
            onTriggered: {
                toastMsg.body = "Not implemented";
                toastMsg.show();
            }
        },
        ActionItem {
            title: qsTr("Delete")
            imageSource: "asset:///icons/ic_delete.png"
            ActionBar.placement: ActionBarPlacement.OnBar
            onTriggered: {
                toastMsg.body = "Not implemented";
                toastMsg.show();
            }
        }
    ]

    attachedObjects: [
        ODataObjectModel {
            id: odataModel
            source: dataSource
        }
    ]

    content: Container {
        layout: StackLayout {

        }
        Label {
            text: "Supplier Details"
            textStyle.base: SystemDefaults.TextStyles.BigText
            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center
        }
        DetailsItemRow {
            label: qsTr("Name")
            data: dataModel.title[".data"]
        }
        DetailsItemRow {
            label: qsTr("Address")
            data: dataModel.content["m:properties"]["d:Address"]["d:Street"]
        }
        DetailsItemRow {
            label: qsTr("")
            data: dataModel.content["m:properties"]["d:Address"]["d:City"]
        }
        DetailsItemRow {
            label: qsTr("")
            data: dataModel.content["m:properties"]["d:Address"]["d:State"]
        }
        DetailsItemRow {
            label: qsTr("")
            data: dataModel.content["m:properties"]["d:Address"]["d:ZipCode"]
        }
        DetailsItemRow {
            label: qsTr("")
            data: dataModel.content["m:properties"]["d:Address"]["d:Country"]
        }
        Button {
            topMargin: 30
            text: qsTr("View Products")
            onClicked: {
                var activeTab = tabPane.activeTab;

                var productList = productListPage.createObject();
                productList.title = dataModel.title[".data"] + " - " + qsTr("Products");
                productList.dataSource = dataService.source + "/" + dataModel.link[1]["href"];
                activeTab.content.push(productList);
            }
            horizontalAlignment: HorizontalAlignment.Center
        }
    }

    onCreationCompleted: {
        odataModel.modelReady.connect(bindToDataModel);
    }

    function bindToDataModel() {
        dataModel = odataModel.model;
    }
}