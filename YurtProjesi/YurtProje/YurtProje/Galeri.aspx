<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Galeri.aspx.cs" Inherits="YurtProje.Galeri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="gallery">
        <div class="container">
            <div class="text-center" style="margin-top: 5%">
                <h3>YURT GALERİSİ</h3>
            </div>
            <div class="row">
                <asp:ListView ID="lstgaleri" runat="server">
                    <ItemTemplate>
                        <figure class="effect-chico">
                            <div class="col-md-3 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
                                <a href='../images/Galeri/<%#Eval("Resim")%>' class="flipLightBox">
                                    <img src='../images/Galeri/<%#Eval("Resim")%>' class="img-responsive" alt="">
                                </a>
                                <p style="text-align: center; font-size: 18pt; margin-top: 8%; color: black; margin-bottom: 8%"><%#Eval("Baslik")%></p>
                            </div>
                        </figure>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>

    </div>
</asp:Content>
