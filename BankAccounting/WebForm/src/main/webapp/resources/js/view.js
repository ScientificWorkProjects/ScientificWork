var FormView = function (viewControls) {
    this.errorBox = "#" + viewControls.errorBox;
    this.successBox = "#" + viewControls.successBox;

};

FormView.prototype.showErrorMessage = function (message) {
    console.log("error");
    $(this.errorBox).show();
};

FormView.prototype.showSuccessMessage = function (message) {
    console.log("success");
    $(this.successBox).show();
};