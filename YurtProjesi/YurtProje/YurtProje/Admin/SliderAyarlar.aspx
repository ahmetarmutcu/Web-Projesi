<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="SliderAyarlar.aspx.cs" Inherits="YurtProje.Admin.SliderAyarlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div style="margin-top: 7%"></div>
    <asp:GridView ID="GridViewSlider" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="100%" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridViewSlider_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
          <Columns>
            <asp:ImageField DataImageUrlField="RESIM_URL" DataImageUrlFormatString="~\images\Slider\{0}"
                ControlStyle-Height="100" ControlStyle-Width="100">
                <ControlStyle Height="100px" Width="100px"></ControlStyle>
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    <div class="card">
        <div class="card-header" style="text-align: center">
            <strong>SLİDER İŞLEMLERİ</strong>
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
                    <label for="text-input" class=" form-control-label">BÜYÜK BAŞLIK</label>
                </div>
                <div class="col-12 col-md-9">
                    <asp:TextBox ID="TextBüyükBaslik" runat="server" class="form-control" autocomplete="off"></asp:TextBox>
                </div>
            </div>
             <div class="row form-group">
                <div class="col col-md-3">
                    <label for="text-input" class=" form-control-label">KÜÇÜK BAŞLIK</label>
                </div>
                <div class="col-12 col-md-9">
                    <asp:TextBox ID="TextBoxKücükBaslik" runat="server" class="form-control" autocomplete="off"></asp:TextBox>
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
