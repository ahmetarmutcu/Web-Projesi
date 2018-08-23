<%@ Page Title="" Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="Personeller.aspx.cs" Inherits="YurtProje.Personeller" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 style="color:red;margin-top:2%;text-align:center">Personel Sayfası</h1>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="TBL_PERSONELLER" KeyFieldName="ID" Theme="Office2010Blue">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsSearchPanel Visible="True" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="AD" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SOYAD" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TCKIMLIK" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TELEFON" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="MAIL" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ADRES" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="GOREVI" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="ISEBASLAMATARIH" VisibleIndex="9">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="MAAS" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
        </Columns>
</dx:ASPxGridView>
<asp:SqlDataSource ID="TBL_PERSONELLER" runat="server" ConnectionString="<%$ ConnectionStrings:DboYurtConnectionString2 %>" DeleteCommand="DELETE FROM TBL_PERSONELLER WHERE (ID = @ID)" InsertCommand="INSERT INTO TBL_PERSONELLER(AD, SOYAD, TCKIMLIK, TELEFON, MAIL, ADRES, ISEBASLAMATARIH, MAAS, GOREVI) VALUES (@AD, @SOYAD, @TCKIMLIK, @TELEFON, @MAIL, @ADRES, @ISEBASLAMATARIH, @MAAS, @GOREVI)" SelectCommand="SELECT TBL_PERSONELLER.* FROM TBL_PERSONELLER" UpdateCommand="UPDATE TBL_PERSONELLER SET AD = @AD, SOYAD = @SOYAD, TCKIMLIK = @TCKIMLIK, TELEFON = @TELEFON, MAIL = @MAIL, ADRES = @ADRES, ISEBASLAMATARIH = @ISEBASLAMATARIH, MAAS = @MAAS, GOREVI = @GOREVI WHERE (ID = @ID)">
    <DeleteParameters>
        <asp:Parameter Name="ID" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="AD" />
        <asp:Parameter Name="SOYAD" />
        <asp:Parameter Name="TCKIMLIK" />
        <asp:Parameter Name="TELEFON" />
        <asp:Parameter Name="MAIL" />
        <asp:Parameter Name="ADRES" />
        <asp:Parameter Name="ISEBASLAMATARIH" />
        <asp:Parameter Name="MAAS" />
        <asp:Parameter Name="GOREVI" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="AD" />
        <asp:Parameter Name="SOYAD" />
        <asp:Parameter Name="TCKIMLIK" />
        <asp:Parameter Name="TELEFON" />
        <asp:Parameter Name="MAIL" />
        <asp:Parameter Name="ADRES" />
        <asp:Parameter Name="ISEBASLAMATARIH" />
        <asp:Parameter Name="MAAS" />
        <asp:Parameter Name="GOREVI" />
        <asp:Parameter Name="ID" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
