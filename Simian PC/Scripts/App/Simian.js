/// <reference path="jquery-1.9.1.min.js" />
/// <reference path="kendo/2013.3.1119/kendo.web.min.js" />
/// <reference path="../Database/DB.js" />
$(document).ready(function () {
    $("#grid").kendoGrid({
        dataSource: {
            data: lineup.artist
        }
    });
});