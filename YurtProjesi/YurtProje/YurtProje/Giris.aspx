<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="YurtProje.Giris" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Sakarya Diriliş Erkek Öğrenci Yurdu Giriş</title>

    <!-- Fontfaces CSS-->
    <link href="Admin/css/font-face.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <!-- Bootstrap CSS-->
    <link href="Admin/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="Admin/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    <link href="Admin/css/theme.css" rel="stylesheet" media="all">
</head>

<body >
    <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="#">
                                <img src="img/logolar/headerlogo_105x105.jpg" alt="DirilişErkek">
                            </a>
                        </div>
                        <div class="login-form">
                            <form id="form1" runat="server">
                                <div class="form-group">
                                    <label>Kullanıcı Adı</label>
                                    <asp:TextBox CssClass="au-input au-input--full" ID="TextKullanici" runat="server" placeholder="Email adresinizi giriniz" autocomplete="off"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Şifre</label>
                                     <asp:TextBox CssClass="au-input au-input--full" ID="TextSifre" runat="server"  type="password" placeholder="Şifrenizi giriniz" autocomplete="off"></asp:TextBox>
                                </div>
                                <asp:Label ID="LblDurum" runat="server"></asp:Label>
                                <div class="login-checkbox">
                                </div>
                                <asp:Button ID="ButtonGiris" runat="server" Text="GİRİŞ" CssClass="au-btn au-btn--block au-btn--green m-b-20" OnClick="ButtonGiris_Click" />
                                <div class="social-login-content">
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="Admin/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="Admin/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="Admin/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="Admin/vendor/slick/slick.min.js">
    </script>
    <script src="Admin/vendor/wow/wow.min.js"></script>
    <script src="Admin/vendor/animsition/animsition.min.js"></script>
    <script src="Admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="Admin/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="Admin/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="Admin/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="Admin/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="Admin/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="Admin/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="AdminPaneli/js/main.js"></script>

</body>

</html>
