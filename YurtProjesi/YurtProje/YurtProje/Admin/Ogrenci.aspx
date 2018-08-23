<%@ Page Title="" Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="Ogrenci.aspx.cs" Inherits="YurtProje.Ogrenci" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color:red;margin-top:2%;text-align:center">Öğrenci Sayfası</h1>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="TBL_OGRENCILER" KeyFieldName="ID" Theme="Office2010Blue" Width="852px">

<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsSearchPanel Visible="True" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ADI" ShowInCustomizationForm="True" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SOYADI" ShowInCustomizationForm="True" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TC" ShowInCustomizationForm="True" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="DOGUMTARIH" ShowInCustomizationForm="True" VisibleIndex="5">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="EMAIL" ShowInCustomizationForm="True" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TELEFON" ShowInCustomizationForm="True" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ADRES" ShowInCustomizationForm="True" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="YURTUCRETI" ShowInCustomizationForm="True" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="KAYITTARIH" ShowInCustomizationForm="True" VisibleIndex="10">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="BOLUM" ShowInCustomizationForm="True" VisibleIndex="11">
            </dx:GridViewDataTextColumn>
        </Columns>

    </dx:ASPxGridView>
<asp:SqlDataSource ID="TBL_OGRENCILER" runat="server" ConnectionString="<%$ ConnectionStrings:DboYurtConnectionString %>" DeleteCommand="DELETE FROM TBL_OGRENCILER WHERE (ID = @ID)" InsertCommand="INSERT INTO TBL_OGRENCILER(ADI, SOYADI, TC, DOGUMTARIH, EMAIL, TELEFON, ADRES, YURTUCRETI, KAYITTARIH, BOLUM) VALUES (@ADI, @SOYADI, @TC, @DOGUMTARIH, @EMAIL, @TELEFON, @ADRES, @YURTUCRETI, @KAYITTARIH, @BOLUM)" SelectCommand="SELECT TBL_OGRENCILER.* FROM TBL_OGRENCILER" UpdateCommand="UPDATE TBL_OGRENCILER SET ADI = @ADI, SOYADI = @SOYADI, TC = @TC, DOGUMTARIH = @DOGUMTARIH, EMAIL = @EMAIL, TELEFON = @TELEFON, ADRES = @ADRES, YURTUCRETI = @YURTUCRETI, BOLUM = @BOLUM, KAYITTARIH = @KAYITTARIH WHERE (ID = @ID)">
    <DeleteParameters>
        <asp:Parameter Name="ID" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ADI" />
        <asp:Parameter Name="SOYADI" />
        <asp:Parameter Name="TC" />
        <asp:Parameter Name="DOGUMTARIH" />
        <asp:Parameter Name="EMAIL" />
        <asp:Parameter Name="TELEFON" />
        <asp:Parameter Name="ADRES" />
        <asp:Parameter Name="YURTUCRETI" />
        <asp:Parameter Name="KAYITTARIH" />
        <asp:Parameter Name="BOLUM" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ADI" />
        <asp:Parameter Name="SOYADI" />
        <asp:Parameter Name="TC" />
        <asp:Parameter Name="DOGUMTARIH" />
        <asp:Parameter Name="EMAIL" />
        <asp:Parameter Name="TELEFON" />
        <asp:Parameter Name="ADRES" />
        <asp:Parameter Name="YURTUCRETI" />
        <asp:Parameter Name="BOLUM" />
        <asp:Parameter Name="KAYITTARIH" />
        <asp:Parameter Name="ID" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
