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

    self.FetchForUser = function (userId, callback) {
            $.getJSON(self.ApiUrl + userId, function (data) {
                callback(data);
            });
    };
}