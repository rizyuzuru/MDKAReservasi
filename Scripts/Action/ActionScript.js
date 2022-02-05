$(document).ready(function () {

    setupTableReservasi();
    GetDataRuangan();
    
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

    function setupTableReservasi() {
        var content = "";
        $.ajax({
            type: 'POST',
            url: '../Service/ReservasiService.asmx/getAllReservasi',
            contentType: 'application/json; charset=utf-8',
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
                    content += '<td><button type="button" class="btn btn-danger" onclick="HapusReservasi(\'' + jsonReservasiData[i]["Reservasi_PK"] + '\',\'' + jsonReservasiData[i]["Ruangan_FK"] + '\')">Hapus Reservasi</button></td>';
                    content += '</tr>'
                }
                content += '<tr>'
                content += '</body>'
                content += '</table>';
                $("#boxIndex").html(content);

            },
            error: function (xhr, ajaxOptions, thrownError) {
                showToast('gagal');
                console.log("function get list monthly report : " + xhr.statusText);
                $(".loading").hide();
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

    $.ajax({
        type: "POST",
        url: '../Service/ReservasiService.asmx/getAllRuangan',        
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            var jsonRuangan = JSON.parse(data.d);
            for (var i = 0; i < jsonRuangan.length; i++) {
                console.log('nama ruangan = ' + jsonRuangan[i]["NamaRuangan"])
                console.log('nama ruangan = ' + jsonRuangan[i]["Ruangan_PK"])
                $('#selectRuangan').append($('<option></option>').val(jsonRuangan[i]["Ruangan_PK"]).html(jsonRuangan[i]["NamaRuangan"]));

            }
        }
    })
}