function slideDecorator(panel, show) {
    $(panel).animate({
        width: show,
        height: show
    }, 500);
    return false;
}


CONSTANTS = {
    SHOW: "show",
    HIDE: "hide"
};


var FormController = function (params) {

    var self = this;
    this.slideNextControlClass = "." + params.slideNextControl;
    this.slidePrevControlClass = "." + params.slidePrevControl;
    this.panel = params.panel;
    this.toggledClass = params.toggledClass;
    this.maxViews = params.maxViews;
    this.currentWindow = 1;
    this.minViews = this.currentWindow;

    slideDecorator("#" + self.panel + self.currentWindow, CONSTANTS.SHOW);
    $(this.slidePrevControlClass).hide();
    this.onNextClick(self);
    this.onPreviousClick(self);

};

FormController.prototype.onNextClick = function (self) {
    $(this.slideNextControlClass).click(function () {

        slideDecorator("#" + self.panel + self.currentWindow, CONSTANTS.HIDE);
        self.currentWindow++;
        slideDecorator("#" + self.panel + self.currentWindow, CONSTANTS.SHOW);
        if (self.currentWindow == self.maxViews) {
            $(self.slideNextControlClass).hide();
        } else if (self.currentWindow > self.minViews) {
            $(self.slidePrevControlClass).show();
        }
    });
};

FormController.prototype.onPreviousClick = function (self) {
    $(this.slidePrevControlClass).click(function () {
        slideDecorator("#" + self.panel + self.currentWindow, CONSTANTS.HIDE);
        self.currentWindow--;

        slideDecorator("#" + self.panel + self.currentWindow, CONSTANTS.HIDE);
        if (self.currentWindow == self.minViews) {
            $(self.slidePrevControlClass).hide();
        } else if (self.currentWindow < self.maxViews) {
            $(self.slideNextControlClass).show();
        }
    })
};


var CreditInfoController = function (params) {

    this.addButton = "#" + params.addButton;
    this.removeButton = "#" + params.removeButton;
    this.container = "#" + params.container;
    this.containerID = "onAddId";

    this.addCounter = 0;
    this.onAddCreditButtonClick();
    this.onRemoveCreditButtonClick();
};

CreditInfoController.prototype.onAddCreditButtonClick = function () {
    var self = this;
    var html = "<input type=\"datetime\" class=\"input-large\">  " + "<input type=\"datetime\" class=\"input-large\">  <input type=\"text\" class=\"input-large\">";
    this.addCounter++;
    $(this.addButton).click(function () {
        $(self.container).append("<div class=\"controls\" id=\"" + self.containerID + self.addCounter + "\">" + html + "</div>");
        return false;
    })
};

CreditInfoController.prototype.onRemoveCreditButtonClick = function () {
    var self = this;
    $(this.removeButton).click(function () {
        $("#" + self.containerID + self.addCounter).remove();
        return false;
    });
    this.addCounter--;
};






