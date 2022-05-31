window.addEventListener('message', function(event) {
    var edata = event.data;
    if (edata.type) {
        var data = edata.data
        $("#logo").html('<img src="' + data.img + '" alt="">')
        if (data.key_hide) {
            $("#key").html('Press <b>' + data.key + '</b> ' + data.key_text + '')
        }
        $("#text").text(data.text)
        $(".w").show()
    } else if (edata.type == false) {
        $(".w").hide()
    }
});