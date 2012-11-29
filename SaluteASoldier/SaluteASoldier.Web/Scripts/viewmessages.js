function ViewMessagesViewModel() {
    var self = this;
    var theDal = new MessageDal();

    self.Messages = ko.observableArray();

    self.LoadMessages = function () {
        if (typeof (Storage) !== "undefined") {
            var userId = localStorage.SelectedUserId;
            theDal.FetchForUser(userId, self.LoadMessagesComplete);
        }

    };

    self.LoadMessagesComplete = function (data) {
        self.Messages(data);
    };

    self.LoadMessages();
}