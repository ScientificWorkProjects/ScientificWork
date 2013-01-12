var Model = {

    AboutCredit: Backbone.Model.extend({
        initialize: function () {

        }
    }),

    AboutClient: Backbone.Model.extend({
        defaults: {
            name: "",
            passport: "",
            birth: "",
            birthPlace: '',
            regAddress: ''
        }
    }),

    AdditionalClientInfo: Backbone.Model.extend({

    }),

    Properties: Backbone.Model.extend({

    }),

    Expensies: Backbone.Model.extend({

    }),
    Incomes: Backbone.Model.extend({

    }),
    ExpensiesAndIncomes: Backbone.Model.extend({
        defaults: {
            incomes: null,
            expensies: null
        }
    }),


    CreditsInfo: Backbone.Model.extend({
        defaults: {
            isCredited: "Нет",
            credits: []
        }
    }),

    AdditionalInfo: Backbone.Model.extend({

    }),

    CreditInfo: Backbone.Model.extend({
        defaults: {
            receiveDate: null,
            endDate: null,
            sum: 0
        }
    })
};







