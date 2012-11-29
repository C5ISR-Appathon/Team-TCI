function UserViewModel() {
    var self = this;
    var theDal = new UserDal();

    self.Users = ko.observableArray();
    self.SelectedUserId = ko.observable();

    self.LoadUsers = function () {
        theDal.FetchAll(self.LoadUsersComplete);
    };

    self.LoadUsersComplete = function (data) {
        self.Users(data);
    };

    self.SelectedUserId.subscribe(function (newValue) {
        if (typeof (Storage) !== "undefined" && localStorage.SelectedUserId != newValue) {
            localStorage.SelectedUserId = newValue;
        }
    });

    self.Init = function () {
        if (typeof (Storage) !== "undefined") {
            var userId = localStorage.SelectedUserId;
            self.SelectedUserId(userId);
        }
        self.LoadUsers();
    };

    self.Init();
}

function UserDal() {
    var self = this;

    self.ApiUrl = "/api/users/";

    self.FetchAll = function (callback) {
        $.getJSON(self.ApiUrl, function (data) {
            callback(data);
        });
    };
}