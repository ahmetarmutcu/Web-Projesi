<%@ Page Title="" Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="AdminAyarlariDuzenle.aspx.cs" Inherits="YurtProje.Admin.AdminAyarlariDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card" style="margin-top: 8%">
        <div class="card-header" style="text-align: center">
            <strong>ADMİN BİLGİLERİ</strong>
        </div>
        <div class="card-body card-block">
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="text-input" class=" form-control-label">ADI</label>
                </div>
                <div class="col-12 col-md-9">
                    <asp:textbox id="TextADI" runat="server" class="form-control" autocomplete="off"></asp:textbox>
                </div>
            </div>

            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="text-input" class=" form-control-label">SOYADI</label>
                </div>
                <div class="col-12 col-md-9">
                    <asp:textbox id="TextSOYADI" runat="server" class="form-control" autocomplete="off"></asp:textbox>
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="text-input" class=" form-control-label">SIFRE</label>
                </div>
                <div class="col-12 col-md-9">
                    <asp:textbox id="TextSIFRE" runat="server" class="form-control" autocomplete="off"></asp:textbox>
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="text-input" class=" form-control-label">EMAIL</label>
                </div>
                <div class="col-12 col-md-9">
                    <asp:textbox id="TextEMAIL" runat="server" class="form-control" autocomplete="off"></asp:textbox>
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="text-input" class=" form-control-label">ACIKLAMA</label>
                </div>
                <div class="col-12 col-md-9">
                    <asp:textbox id="TextACIKLAMA" runat="server" class="form-control" autocomplete="off"></asp:textbox>
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="file-input" class=" form-control-label">Resimi Seç</label>
                </div>
                <div class="col-12 col-md-9">
                    <asp:fileupload id="resimsec" runat="server" cssclass="form-control-file" />
                    <asp:image id="ImageResim" runat="server" width="100px" height="100px" />
                </div>
            </div>

            <div class="card-footer">
                <div class="row">
                    <div class="col-md-9">
                        <div class="col-md-9">
                            <asp:button id="btnduzenle" runat="server" text="Düzenle" onclick="btnduzenle_Click" class="btn btn-primary btn-sm" width="80px" />
                            <br />
                            <asp:label id="LblDurum" runat="server"></asp:label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
