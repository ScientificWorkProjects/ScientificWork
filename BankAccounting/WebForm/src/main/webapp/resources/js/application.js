$(document).ready(function () {

    var service = new FormService("./form");

    var view = new FormView({
        errorBox: "error-box",
        successBox: "success-box"
    });

    new FormController({
        view: view,
        service: service,
        slideNextControl: "next",
        slidePrevControl: "prev",
        panel: "slide-panel",
        toggledClass: "active",
        maxViews: 7,
        sendButton: "sendAllButton"
    });

    new CreditInfoController({
        container: "credit-info-container",
        addButton: "addButton",
        removeButton: "removeButton"
    });
});

