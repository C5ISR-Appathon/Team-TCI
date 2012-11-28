function setActiveNavItem(itemTitle) {
    $(".nav li").each(function () {
        $(this).removeClass("active");
        if ($(this).children("a")[0] != undefined && $(this).children("a")[0].text == itemTitle) {
            $(this).addClass("active");
        }
    });
}

