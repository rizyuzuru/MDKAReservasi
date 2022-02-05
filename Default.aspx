<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MDKAReservasi._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h4>Selamat datang di aplikasi reservasi ruang meeting</h4>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="box box-default">
                <div class="box-header with-border">
                    <%--<h3 class="box-title">Index</h3>--%>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <div class="input-group date" id="divTanggal" data-provide="datepicker">
                    <label for="tanggal" class="col-form-label">Tanggal</label>
                    <input type="date" class="form-control" id="tanggalHome">
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12" id="boxIndexHome">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
