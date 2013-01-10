$(document).ready(function () {

    var controller = new FormController({
        slideNextControl: "next",
        slidePrevControl: "prev",
        panel: "slide-panel",
        toggledClass: "active",
        maxViews: 7

    });

    new CreditInfoController({
        container: "credit-info-container" ,
        addButton: "addButton",
        removeButton: "removeButton"
    });
});

