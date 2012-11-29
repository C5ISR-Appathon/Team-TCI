function UserViewModel() {
    var self = this;
    var theDal = new UserDal();

    self.Users = ko.observableArray();
    self.SelectedUserId = ko.observable(1);

    self.LoadUsers = function () {
        theDal.FetchAll(self.LoadUsersComplete);
    };

    self.LoadUsersComplete = function (data) {
        self.Users(data);
    };

    self.LoadUsers();
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