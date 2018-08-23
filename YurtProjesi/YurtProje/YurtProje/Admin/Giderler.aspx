<%@ Page Title="" Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="Giderler.aspx.cs" Inherits="YurtProje.Admin.Giderler" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color:red;margin-top:2%;text-align:center">Giderler Sayfası</h1>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="TBL_GIDERLER" KeyFieldName="ID" Theme="Office2010Blue">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsSearchPanel Visible="True" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1" ShowInCustomizationForm="True">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SU_FATURASI" VisibleIndex="4" ShowInCustomizationForm="True">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ELEKTRIK_FATURASI" VisibleIndex="5" ShowInCustomizationForm="True">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="DOGALGAZ_FATURASI" VisibleIndex="6" ShowInCustomizationForm="True">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="INTERNET_FATURASI" VisibleIndex="7" ShowInCustomizationForm="True">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="EK_ODEMELER" VisibleIndex="8" ShowInCustomizationForm="True">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ODEME_NOTLARI" VisibleIndex="9" ShowInCustomizationForm="True">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="AY" VisibleIndex="2">
                <PropertiesComboBox>
                    <Items>
                        <dx:ListEditItem Text="Ocak" Value="Ocak" />
                        <dx:ListEditItem Text="Şubat" Value="Şubat" />
                        <dx:ListEditItem Text="Mart" Value="Mart" />
                        <dx:ListEditItem Text="Nisan" Value="Nisan" />
                        <dx:ListEditItem Text="Mayıs" Value="Mayıs" />
                        <dx:ListEditItem Text="Haziran" Value="Haziran" />
                        <dx:ListEditItem Text="Temmuz" Value="Temmuz" />
                        <dx:ListEditItem Text="Ağustos" Value="Ağustos" />
                        <dx:ListEditItem Text="Eylül" Value="Eylül" />
                        <dx:ListEditItem Text="Ekim" Value="Ekim" />
                        <dx:ListEditItem Text="Kasım" Value="Kasım" />
                        <dx:ListEditItem Text="Aralık" Value="Aralık" />
                    </Items>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="YIL" VisibleIndex="3">
                <PropertiesComboBox>
                    <Items>
                        <dx:ListEditItem Text="2018" Value="2018" />
                        <dx:ListEditItem Text="2019" Value="2019" />
                        <dx:ListEditItem Text="2020" Value="2020" />
                        <dx:ListEditItem Text="2021" Value="2021" />
                        <dx:ListEditItem Text="2022" Value="2022" />
                    </Items>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="TBL_GIDERLER" runat="server" ConnectionString="<%$ ConnectionStrings:DboYurtConnectionString %>" DeleteCommand="DELETE FROM TBL_GIDERLER WHERE (ID = @ID)" InsertCommand="INSERT INTO TBL_GIDERLER(AY, YIL, SU_FATURASI, ELEKTRIK_FATURASI, DOGALGAZ_FATURASI, INTERNET_FATURASI, EK_ODEMELER, ODEME_NOTLARI) VALUES (@AY, @YIL, @SU_FATURASI, @ELEKTRIK_FATURASI, @DOGALGAZ_FATURASI, @INTERNET_FATURASI, @EK_ODEMELER, @ODEME_NOTLARI)" SelectCommand="SELECT TBL_GIDERLER.* FROM TBL_GIDERLER order by AY asc" UpdateCommand="UPDATE TBL_GIDERLER SET AY = @AY, YIL = @YIL, SU_FATURASI = @SU_FATURASI, ELEKTRIK_FATURASI = @ELEKTRIK_FATURASI, DOGALGAZ_FATURASI = @DOGALGAZ_FATURASI, INTERNET_FATURASI = @INTERNET_FATURASI, EK_ODEMELER = @EK_ODEMELER, ODEME_NOTLARI = @ODEME_NOTLARI
WHERE ID=@ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AY" />
            <asp:Parameter Name="YIL" />
            <asp:Parameter Name="SU_FATURASI" />
            <asp:Parameter Name="ELEKTRIK_FATURASI" />
            <asp:Parameter Name="DOGALGAZ_FATURASI" />
            <asp:Parameter Name="INTERNET_FATURASI" />
            <asp:Parameter Name="EK_ODEMELER" />
            <asp:Parameter Name="ODEME_NOTLARI" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AY" />
            <asp:Parameter Name="YIL" />
            <asp:Parameter Name="SU_FATURASI" />
            <asp:Parameter Name="ELEKTRIK_FATURASI" />
            <asp:Parameter Name="DOGALGAZ_FATURASI" />
            <asp:Parameter Name="INTERNET_FATURASI" />
            <asp:Parameter Name="EK_ODEMELER" />
            <asp:Parameter Name="ODEME_NOTLARI" />
            <asp:Parameter Name="ID" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
