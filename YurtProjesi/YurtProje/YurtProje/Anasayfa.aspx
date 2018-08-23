﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="YurtProje.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top: 12%"></div>
    <script src="js/jssor.slider-27.4.0.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        jssor_1_slider_init = function () {

            var jssor_1_SlideoTransitions = [
                [{ b: -1, d: 1, o: -0.7 }],
                [{ b: 900, d: 2000, x: -379, e: { x: 7 } }],
                [{ b: 900, d: 2000, x: -379, e: { x: 7 } }],
                [{ b: -1, d: 1, o: -1, sX: 2, sY: 2 }, { b: 0, d: 900, x: -171, y: -341, o: 1, sX: -2, sY: -2, e: { x: 3, y: 3, sX: 3, sY: 3 } }, { b: 900, d: 1600, x: -283, o: -1, e: { x: 16 } }]
            ];

            var jssor_1_options = {
                $AutoPlay: 1,
                $SlideEasing: $Jease$.$InOutQuad,
                $CaptionSliderOptions: {
                    $Class: $JssorCaptionSlideo$,
                    $Transitions: jssor_1_SlideoTransitions
                },
                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$
                },
                $BulletNavigatorOptions: {
                    $Class: $JssorBulletNavigator$
                }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*#region responsive code begin*/

            var MAX_WIDTH = 3000;

            function ScaleSlider() {
                var containerElement = jssor_1_slider.$Elmt.parentNode;
                var containerWidth = containerElement.clientWidth;

                if (containerWidth) {

                    var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                    jssor_1_slider.$ScaleWidth(expectedWidth);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }

            ScaleSlider();

            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            /*#endregion responsive code end*/
        };
    </script>
    <link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300italic,regular,italic,700,700italic&subset=latin-ext,greek-ext,cyrillic-ext,greek,vietnamese,latin,cyrillic" rel="stylesheet" type="text/css" />
    <style>
        /*jssor slider loading skin spin css*/
        .jssorl-009-spin img {
            animation-name: jssorl-009-spin;
            animation-duration: 1.6s;
            animation-iteration-count: infinite;
            animation-timing-function: linear;
        }

        @keyframes jssorl-009-spin {
            from {
                transform: rotate(0deg);
            }

            to {
                transform: rotate(360deg);
            }
        }

        /*jssor slider bullet skin 032 css*/
        .jssorb032 {
            position: absolute;
        }

            .jssorb032 .i {
                position: absolute;
                cursor: pointer;
            }

                .jssorb032 .i .b {
                    fill: #fff;
                    fill-opacity: 0.7;
                    stroke: #000;
                    stroke-width: 1200;
                    stroke-miterlimit: 10;
                    stroke-opacity: 0.25;
                }

                .jssorb032 .i:hover .b {
                    fill: #000;
                    fill-opacity: .6;
                    stroke: #fff;
                    stroke-opacity: .35;
                }

            .jssorb032 .iav .b {
                fill: #000;
                fill-opacity: 1;
                stroke: #fff;
                stroke-opacity: .35;
            }

            .jssorb032 .i.idn {
                opacity: .3;
            }

        /*jssor slider arrow skin 051 css*/
        .jssora051 {
            display: block;
            position: absolute;
            cursor: pointer;
        }

            .jssora051 .a {
                fill: none;
                stroke: #fff;
                stroke-width: 360;
                stroke-miterlimit: 10;
            }

            .jssora051:hover {
                opacity: .8;
            }

            .jssora051.jssora051dn {
                opacity: .5;
            }

            .jssora051.jssora051ds {
                opacity: .3;
                pointer-events: none;
            }
    </style>
    <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden; visibility: hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" class="jssorl-009-spin" style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; text-align: center; background-color: rgba(0,0,0,0.7);">
            <img style="margin-top: -19px; position: relative; top: 50%; width: 38px; height: 38px;" src="img/spin.svg" />
        </div>
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden;">
            <asp:ListView ID="listslider" runat="server">
                <ItemTemplate>
                    <div>
                        <img data-u="image" src='images/Slider/<%#Eval("RESIM_URL")%>' />
                        <div style="position: absolute; top: 30px; left: 800px; width: 480px; height: 300px; font-family: 'Roboto Condensed',sans-serif; font-size: 40px; color: #000000; line-height: 1.5; padding: 5px 5px 5px 5px; box-sizing: border-box; background-color:rgba(255,188,5,0.8); background-clip: padding-box;">
                            <br />
                            <%#Eval("BUYUK_BASLIK") %>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>

        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb032" style="position: absolute; bottom: 12px; right: 12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
            <div data-u="prototype" class="i" style="width: 16px; height: 16px;">
                <svg viewbox="0 0 16000 16000" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                    <circle class="b" cx="8000" cy="8000" r="5800"></circle>
                </svg>
            </div>
        </div>
        <!-- Arrow Navigator -->
        <div data-u="arrowleft" class="jssora051" style="width: 65px; height: 65px; top: 0px; left: 25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
            <svg viewbox="0 0 16000 16000" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                <polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>
            </svg>
        </div>
        <div data-u="arrowright" class="jssora051" style="width: 65px; height: 65px; top: 0px; right: 25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
            <svg viewbox="0 0 16000 16000" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                <polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>
            </svg>
        </div>
    </div>
    <script type="text/javascript">jssor_1_slider_init();</script>
    <!-- #endregion Jssor Slider End -->
    <div id="feature" style="margin-left: 17%">
        <div class="container">
            <div class="row">
                <div class="col-md-3 wow fadeInRight" data-wow-offset="0" data-wow-delay="0.3s">
                    <div class="text-center">
                        <div class="hi-icon-wrap hi-icon-effect">
                            <i class="fa fa-tags"></i>
                            <h2>Misyon</h2>
                            <p>İnsan Vakfı ‘‘vermek ve hoşgörü’’nün kurumsallaşmış hali olan tarihimizdeki vakıf misyonuna uygun olarak, toplumumuzun ihtiyaç duyduğu sosyal, eğitim ve yardımlaşma alanında nitelikli projeler üretir ve uygular.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 wow fadeInRight" data-wow-offset="0" data-wow-delay="0.3s">
                    <div class="text-center">
                        <div class="hi-icon-wrap hi-icon-effect">
                            <i class="fa fa-heart-o"></i>
                            <h2>Vizyon</h2>
                            <p>Bir hayır kurumu olarak hayırsever insanlarımızın teveccühleri ve güvenlerini kazanarak, belirtilen çalışma alanlarında ülkemiz insanına hizmet götürüp vakıf kurumunu gelecek nesillere ulaştırmak.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 wow fadeInLeft" data-wow-offset="0" data-wow-delay="0.3s">
                    <div class="text-center">
                        <div class="hi-icon-wrap hi-icon-effect">
                            <i class="fa fa-cloud"></i>
                            <h2>Prensiplerimiz</h2>
                            <p>
                                İnsan Vakfı hizmetlerinde toplumun geneline yönelmeyi ilke edinmiştir.
                Vakfedilen malın tahsis edilen alan için kullanılılmasına, israf edilmemesine önem verir. Bu hassasiyet mütevellilik sorumluluğunun bir gereğidir.
                            </p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div style="margin-left: 20%">
        <span>
            <img src="img/logolar/logo1.png" /></span>
        <span>
            <img src="img/logolar/logo2.png" /></span>
        <span>
            <img src="img/logolar/logo3.png" /></span>
        <span>
            <img src="img/logolar/logo4.png" /></span>
    </div>
</asp:Content>
