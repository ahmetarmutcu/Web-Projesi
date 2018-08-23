<%@ Page Title="" Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="GaleriAyarlar.aspx.cs" Inherits="YurtProje.Admin.GaleriAyarlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top: 7%"></div>
    <asp:GridView ID="GridViewGaleri" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="100%" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridViewGaleri_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <Columns>
            <asp:ImageField DataImageUrlField="Resim" DataImageUrlFormatString="~\images\Galeri\{0}"
                ControlStyle-Height="100" ControlStyle-Width="100">
                <ControlStyle Height="100px" Width="100px"></ControlStyle>
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    <div class="card">
        <div class="card-header" style="text-align: center">
            <strong>GALERİ İŞLEMLERİ</strong>
        </div>
        <div class="card-body card-block">
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="text-input" class=" form-control-label">ID</label>
                </div>
                <div class="col-12 col-md-9">
                    <asp:TextBox ID="TextID" runat="server" class="form-control" autocomplete="off"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="text-input" class=" form-control-label">BAŞLIK</label>
                </div>
                <div class="col-12 col-md-9">
                    <asp:TextBox ID="TextBaslik" runat="server" class="form-control" autocomplete="off"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="file-input" class=" form-control-label">Resimi Seç</label>
                </div>
                <div class="col-12 col-md-9">
                    <asp:FileUpload ID="resimsec" runat="server" CssClass="form-control-file" />
                    <asp:Image ID="ImageResim" runat="server" Width="100px" Height="100px" />

                </div>
            </div>

            <div class="card-footer">
                <div class="row">
                    <div class="col-md-9">
                        <div class="col-md-9">
                            <span>
                                <asp:Button ID="BtnKaydet" runat="server" Text="Ekle" class="btn btn-primary btn-sm" OnClick="BtnKaydet_Click" Width="80px" />
                                <asp:Button ID="BtnSil" runat="server" Text="Sil" class="btn btn-danger btn-sm" OnClick="BtnSil_Click" Width="80px" />
                                <asp:Button ID="BtnDuzenle" runat="server" Text="Düzenle" class="btn btn-dark btn-sm" OnClick="BtnDuzenle_Click" Width="80px" /><br />
                            </span>
                            <asp:Label ID="LblDurum" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
