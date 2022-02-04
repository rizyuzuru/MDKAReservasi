<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MDKAReservasi.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <center><h2>List Reservasi</h2></center>
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Tambah Data Reservasi
    </button>

    <div class="row">
        <div class="col-md-12">
            <div class="box box-default">
                <div class="box-header with-border">
                    <%--<h3 class="box-title">Index</h3>--%>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12" id="boxIndex">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Form Reservasi Ruangan</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="txtRuangan" class="col-form-label">Ruangan</label>
                            <input type="text" class="form-control" id="txtRuangan">
                        </div>
                        <div class="form-group">
                            <label for="txtSubject" class="col-form-label">Subject</label>
                            <input type="text" class="form-control" id="txtSubject">
                        </div>
                        <div class="input-group date" id="divTanggal" data-provide="datepicker">
                            <label for="tanggal" class="col-form-label">Tanggal</label>
                            <input type="date" class="form-control" id="tanggal">
                        </div>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Jam Mulai</label>
                            <input type="time" class="form-control" id="txtJamMulai">
                        </div>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Jam Selesai</label>
                            <input type="time" class="form-control" id="txtJamSelesai">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id="SaveButton">Simpan Reservasi</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
