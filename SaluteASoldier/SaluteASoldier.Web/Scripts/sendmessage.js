function MessageViewModel() {
    var self = this;
    var theDal = new MessageDal();
    var userTypeDal = new UserTypeDal();

    self.Text = ko.observable("");
    self.Destination = ko.observable(0);
    self.UserTypes = ko.observableArray();

    self.SendMessage = function () {
        theDal.Insert(self, self.SendMessageComplete);
    };

    self.SendMessageComplete = function (response) {
        $('#myModal').modal('show');
    };

    self.LoadUserTypes = function () {
        userTypeDal.FetchAll(self.LoadUserTypesComplete);
    };

    self.LoadUserTypesComplete = function (data) {
        self.UserTypes(data);
    };

    self.LoadUserTypes();
}

function MessageDal() {
    var self = this;

    self.ApiUrl = "/api/messages/";

    self.Insert = function (message, callback) {
        $.post(self.ApiUrl, { Text: message.Text(), Destination: message.Destination(), Originator: userVM.SelectedUserId })
            .success(function (response) { callback(response); })
            .error(function (xhr, textStatus, errorThrown) {
                alert(xhr.responseText);
            });
        };
}

function UserTypeDal() {
    var self = this;

    self.ApiUrl = "/api/usertypes/";

    self.FetchAll = function (callback) {
        $.getJSON(self.ApiUrl, function (data) {
            callback(data);
        });
    };
}