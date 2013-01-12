function animator(panel, show) {
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


FormController = function (params) {

    this.formsData = new Array(7);

    this.service = params.service;
    this.view = params.view;


    var self = this;
    this.slideNextControlClass = "." + params.slideNextControl;
    this.slidePrevControlClass = "." + params.slidePrevControl;
    this.panel = params.panel;
    this.toggledClass = params.toggledClass;
    this.maxViews = params.maxViews;
    this.currentWindow = 1;
    this.minViews = this.currentWindow;
    this.sendButton = "#" + params.sendButton;

    animator("#" + self.panel + self.currentWindow, CONSTANTS.SHOW);
    $(this.slidePrevControlClass).hide();
    this.onNextClick(self);
    this.onPreviousClick(self);
    this.onSendButtonClick();

    $("input").addClass("required");


};

FormController.prototype.onSendButtonClick = function () {
    var self = this;
    $(this.sendButton).click(function () {
        var form = "#form" + self.currentWindow;
        if ($(form).valid()) {
            self.formHandlers(self.currentWindow);
            if (self.service.sendAllData(this.formsData)) {
                self.view.showSuccessMessage("");
            } else {
                self.view.showErrorMessage("");
            }
        }
        return false;
    });

};

FormController.prototype.onNextClick = function (self) {
    $(this.slideNextControlClass).click(function () {
        var form = "#form" + self.currentWindow;

        if ($(form).valid()) {
            console.log("handle next button");
            self.formHandlers(self.currentWindow);
            //TODO: move to view
            animator("#" + self.panel + self.currentWindow, CONSTANTS.HIDE);
            self.currentWindow++;
            animator("#" + self.panel + self.currentWindow, CONSTANTS.SHOW);
            if (self.currentWindow == self.maxViews) {
                $(self.slideNextControlClass).hide();
            } else if (self.currentWindow > self.minViews) {
                $(self.slidePrevControlClass).show();
            }
        }
        else {
            $(form).validate();
        }
    });
};

FormController.prototype.onPreviousClick = function (self) {
    $(this.slidePrevControlClass).click(function () {


        //TODO: move to view
        animator("#" + self.panel + self.currentWindow, CONSTANTS.HIDE);
        self.currentWindow--;

        animator("#" + self.panel + self.currentWindow, CONSTANTS.SHOW);
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
    var html = "<input type=\"date\" class=\"input-large\">  " + "<input type=\"date\" class=\"input-large\">  <input type=\"text\" class=\"input-large\">";
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

FormController.prototype.onSendAll = function () {

};

FormController.prototype.handleForm1 = function () {
    var currentForm = this.currentWindow - 1;
    var inputs = $("#form" + this.currentWindow + " :input");

    this.formsData[currentForm] = new Model.AboutCredit({
        sum: inputs.get(0).value,
        rate: inputs.get(1).value,
        count: inputs.get(2).value,
        repayment: inputs.get(3).value,
        aim: inputs.get(4).value
    });
    console.log(JSON.stringify(this.formsData[0].toJSON()) + " " + inputs.get(0).value);
};

FormController.prototype.handleForm2 = function () {
    var currentForm = this.currentWindow - 1;
    var inputs = $("#form" + this.currentWindow + " :input");
    this.formsData[currentForm] = new Model.AboutClient({
        name: inputs.get(0).value,
        passport: inputs.get(1).value,
        getPassportDate: inputs.get(2).value,
        birth: inputs.get(3).value,
        birthPlace: inputs.get(4).value,
        regAddress: inputs.get(5).value,
        currAddress: inputs.get(6).value,
        fStatus: inputs.get(7).value,
        hPhone: inputs.get(8).value,
        mPhone: inputs.get(9).value,
        wPhone: inputs.get(10).value,
        dependentsChildren: inputs.get(11).value,
        dependentsWife: inputs.get(12).value,
        dependentsParents: inputs.get(13).value,
        dependentsOthers: inputs.get(14).value
    });
    console.log(JSON.stringify(this.formsData[currentForm].toJSON()));
};

FormController.prototype.handleForm3 = function () {
    var currentForm = this.currentWindow - 1;
    var inputs = $("#form" + this.currentWindow + " :input");
    this.formsData[currentForm] = new Model.AdditionalClientInfo({
        education: inputs.get(0).value,
        educationInstitute: inputs.get(1).value,
        speciality: inputs.get(2).value,
        work: inputs.get(3).value,
        post: inputs.get(4).value,
        hire: inputs.get(5).value,
        workCurrentAddress: inputs.get(6).value,
        workPhone: inputs.get(7).value,
        totalExp: inputs.get(8).value,
        currentWorkExp: inputs.get(9).value
    });
    console.log(JSON.stringify(this.formsData[currentForm].toJSON()));
};
FormController.prototype.handleForm4 = function () {

};

FormController.prototype.handleForm5 = function () {
    var currentForm = this.currentWindow - 1;
    var inputs = $("#form" + this.currentWindow + " :input");
    this.formsData[currentForm] = new Model.ExpensiesAndIncomes({
        incomes: new Model.Incomes({
            mainSalary: inputs.get(0).value,
            workAwards: inputs.get(1).value,
            salaryForAddWork: inputs.get(2).value,
            fromRent: inputs.get(3).value,
            dividends: inputs.get(4).value,
            insuranceIncome: inputs.get(5).value,
            others: inputs.get(6).value
        }),
        expensies: new Model.Expensies({
            currentExpensies: inputs.get(7).value,
            rents: inputs.get(8).value,
            insurance: inputs.get(9).value,
            credits: inputs.get(10).value,
            taxes: inputs.get(11).value,
            education: inputs.get(12).value,
            aliments: inputs.get(13).value,
            others: inputs.get(14).value
        })
    });
    console.log(JSON.stringify(this.formsData[currentForm].toJSON()));
};
FormController.prototype.handleForm6 = function () {
    var currentForm = this.currentWindow - 1;
    var inputs = $("#form" + this.currentWindow + " :input");
    var credits = [];
    console.log(inputs.length);
    for (var i = 1; i < inputs.length; i += 3) {
        var v = new Model.CreditInfo({
            receiveDate: inputs.get(i).value,
            endDate: inputs.get(i + 1).value,
            sum: inputs.get(i + 2).value});
        console.log(JSON.stringify(v));
        credits.push(v);
    }
    this.formsData[currentForm] = new Model.CreditsInfo({
        isCredited: inputs.get(0).value,
        credits: credits
    });
    console.log(JSON.stringify(this.formsData[currentForm].toJSON()));
};

FormController.prototype.handleForm7 = function () {
    var currentForm = this.currentWindow - 1;
    var inputs = $("#form" + this.currentWindow + " :input");
    this.formsData[currentForm] = new Model.AdditionalInfo({
        f1: inputs.get(0).value,
        f2: inputs.get(1).value,
        f3: inputs.get(2).value,
        f5: inputs.get(3).value,
        f7: inputs.get(4).value,
        f8: inputs.get(5).value,
        f9: inputs.get(6).value,
        f10: inputs.get(7).value,
        f11: inputs.get(8).value,
        f4: inputs.get(9).value,
        f6: inputs.get(10).value
    });
    console.log(JSON.stringify(this.formsData[currentForm].toJSON()));
};


FormController.prototype.formHandlers = function (formNum) {
    if (formNum == 1) {
        this.handleForm1();
    } else if (formNum == 2) {
        this.handleForm2();
    } else if (formNum == 3) {
        this.handleForm3();
    } else if (formNum == 4) {
        this.handleForm4();
    } else if (formNum == 5) {
        this.handleForm5();
    } else if (formNum == 6) {
        this.handleForm6();
    } else if (formNum == 7) {
        this.handleForm7();
    }
    console.log("current handled window: " + formNum);

};







