$(document).ready(function () {
     
    $("#SaveButton").click(function () {
        $.ajax({
            type: "POST",
            url: '../Service/ReservasiService.asmx/InsertReservasi',
            data: "{'ruanganFK' :'" + $('#selectRuangan').val() + "','subject' :'" + $('#txtSubject').val() + "','tanggalReservasi' :'" + $("#tanggal").val() + "','jamMulai':'" + $("#txtJamMulai").val() + "','jamSelesai':'" + $("#txtJamSelesai").val() + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                location.reload();
            }
        })
    });
    $("#tanggalHome").change(function () {
        setupTableRuanganHome();
    });
    $("#tanggal").change(function () {
        GetDataRuangan();
        setupTableReservasi();
    });

    function setupTableReservasi() {
        var content = "";
        $("#boxIndex").html("");
        $.ajax({
            type: 'POST',
            url: '../Service/ReservasiService.asmx/getAllReservasi',
            data: "{'tanggal' :'" + $("#tanggal").val() + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: 'json',
            success: function (response) {
                var jsonReservasiData = JSON.parse(response.d);
                content += '<table id="" class="table table-striped table-bordered">';
                content += '<thead>';
                content += '<tr>'
                content += '<td  style=""><b>Ruangan</b></td>';
                content += '<td  style=""><b>Subject</b></td>';
                content += '<td  style=""><b>Tanggal Reservasi</b></td>';
                content += '<td  style=""><b>Jam Mulai</b></td>';
                content += '<td  style=""><b>Jam Selesai</b></td>';
                content += '</tr>'
                content += '</thead>'
                content += '<tbody>'
                for (var i = 0; i < jsonReservasiData.length; i++) {
                    content += '<tr>'
                    content += '<td style = "font-size: 16px;">' + jsonReservasiData[i]["namaRuangan"] + '</label></td>';
                    content += '<td style = "font-size: 16px;">' + jsonReservasiData[i]["subjectReservasi"] + '</label></td>';
                    content += '<td style = "font-size: 16px;">' + jsonReservasiData[i]["tanggalReservasi"] + '</label></td>';
                    content += '<td style = "font-size: 16px;">' + jsonReservasiData[i]["jamMulai"] + '</label></td>';
                    content += '<td style = "font-size: 16px;">' + jsonReservasiData[i]["jamSelesai"] + '</label></td>';
                    content += '<td><button type="button" class="btn btn-danger" onclick="HapusReservasi(\'' + jsonReservasiData[i]["Reservasi_PK"] + '\',\'' + jsonReservasiData[i]["Ruangan_PK"] + '\')">Hapus Reservasi</button></td>';
                    content += '</tr>'
                }
                content += '<tr>'
                content += '</body>'
                content += '</table>';
                $("#boxIndex").html(content);

            },
            error: function (xhr, ajaxOptions, thrownError) {

            }
        });
    }

});
function HapusReservasi(pkReservasi, pkRuangan) {

    $.ajax({
        type: "POST",
        url: '../Service/ReservasiService.asmx/DeleteReservasi',
        data: "{'PKTransaksi' :'" + pkReservasi + "','Ruangan_FK' :'" + pkRuangan + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            location.reload();
        }
    })
}
function GetDataRuangan() {
    $('#selectRuangan option').remove();
    $.ajax({
        type: "POST",
        url: '../Service/ReservasiService.asmx/getAllRuangan',
        data: "{'tanggal' :'" + $("#tanggal").val() + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            var jsonRuangan = JSON.parse(data.d);
            for (var i = 0; i < jsonRuangan.length; i++) {
                console.log('nama ruangan = ' + jsonRuangan[i]["NamaRuangan"])
                console.log('nama ruangan = ' + jsonRuangan[i]["Ruangan_PK"])
                if (jsonRuangan[i]["Status_FK"] == 2) {
                    console.log('sudah di booking=' + jsonRuangan[i]["NamaRuangan"])
                    $('#selectRuangan').append($('<option></option>').val(jsonRuangan[i]["Ruangan_PK"]).html(jsonRuangan[i]["NamaRuangan"]));
                }

            }
        }
    })
}
function setupTableRuanganHome() {
    var content = "";
    $.ajax({
        type: 'POST',
        url: '../Service/ReservasiService.asmx/getDataRuanganByTanggal',
        data: "{'dateparam' :'" + $("#tanggalHome").val() + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        success: function (response) {
            var jsonRuanganByTanggal = JSON.parse(response.d);
            content += '<table id="" class="table table-striped table-bordered">';
            content += '<thead>';
            content += '<tr>'
            content += '<td  style=""><b>Ruangan</b></td>';
            content += '<td  style=""><b>Status</b></td>';
            content += '<td  style=""><b>tanggal reservasi</b></td>';

            content += '</tr>'
            content += '</thead>'
            content += '<tbody>'
            $("#boxIndexHome").html("");
            for (var i = 0; i < jsonRuanganByTanggal.length; i++) {
                content += '<tr>'
                content += '<td style = "font-size: 16px;">' + jsonRuanganByTanggal[i]["NamaRuangan"] + '</label></td>';
                if (jsonRuanganByTanggal[i]["Status_FK"] == 1 && jsonRuanganByTanggal[i]["tanggalReservasi"] == $("#tanggalHome").val()) {
                    content += '<td style = "font-size: 16px; color: green;  font-weight: bold;">' + jsonRuanganByTanggal[i]["namaStatus"] + '</label></td>';
                } else if (jsonRuanganByTanggal[i]["Status_FK"] == 2) {
                    content += '<td style = "font-size: 16px;  color: Black;  font-weight: bold;">' + jsonRuanganByTanggal[i]["namaStatus"] + '</label></td>';
                } else if (jsonRuanganByTanggal[i]["Status_FK"] == 3) {
                    content += '<td style = "font-size: 16px;  color: Red;  font-weight: bold;">' + jsonRuanganByTanggal[i]["namaStatus"] + '</label></td>';
                } else {
                    content += '<td style = "font-size: 16px;  color: Black;  font-weight: bold;">Vacant</label></td>';
                }
                if (jsonRuanganByTanggal[i]["tanggalReservasi"] == null) {
                    console.log('kondisi 1');
                    content += '<td style = "font-size: 16px;">-</label></td>';
                } else if (jsonRuanganByTanggal[i]["tanggalReservasi"] == $("#tanggalHome").val()) {
                    console.log('kondisi 2');
                    content += '<td style = "font-size: 16px;">' + jsonRuanganByTanggal[i]["tanggalReservasi"] + '</label></td>';
                } else {
                    console.log('kondisi 3');
                    content += '<td style = "font-size: 16px;">-</label></td>';
                }




                content += '</tr>'
            }
            content += '<tr>'
            content += '</body>'
            content += '</table>';
            $("#boxIndexHome").html(content);

        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert('gagal');
            console.log("function get list monthly report : " + xhr.statusText);
            $(".loading").hide();
        }
    });
}

