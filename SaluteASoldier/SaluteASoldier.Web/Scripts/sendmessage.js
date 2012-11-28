function MessageViewModel() {
    var self = this;
    var theDal = new MessageDal();

    self.Text = ko.observable("");
    self.Destination = ko.observable(0);

    self.SendMessage = function () {
        theDal.Insert(self, self.SendMessageComplete);
    };

    self.SendMessageComplete = function (response) {
        alert(response);
    };
}

function MessageDal() {
    var self = this;

    self.ApiUrl = "/api/messages/";

    self.Insert = function (message, callback) {
        $.post(self.ApiUrl, { Text: message.Text(), Destination: message.Destination() })
            .success(function (response) { callback(response); })
            .error(function (xhr, textStatus, errorThrown) {
                callback(xhr.responseText);
            });
    };
}