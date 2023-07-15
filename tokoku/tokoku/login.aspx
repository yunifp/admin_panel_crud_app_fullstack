<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="tokoku.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Masuk</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="login.css" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'/>
</head>
<body>
    <form id="form1" runat="server">
        <!-- NAVBAR CREATION -->
    <header class="header">
        <nav class="navbar">
            <a href="https://who-is-darren-armani.darrenarmani.repl.co">Portfolio Saya (Kumpulan project)</a>
            <a href="https://wa.link/d0av9c">Pusat Bantuan</a>
            <!--GANTI TEMA -->
            <a><i class='bx bxs-sun' onclick="gantiTema()"></i></a>
        </nav>

    </header>
    <!-- LOGIN FORM CREATION -->
    <div class="background"></div>
    <div class="container">
        <div class="item">
            <h2 class="logo"><i class='bx bx-pyramid'></i>NyobaNgoding.id </h2>
            <div class="text-item">
                <h2>Selamat Datang Admin<span>
                        Sudah siapkah anda hari ini?
                    </span></h2>
                <h1>Tetap semangat.!!!</h1>
                <p>Menjual jasa pembuatan website menggunakan <span>ASP.NET, HTML & CSS, JavaScript dan
                        PHP</span> </p>
                <div class="social-icon">
                    <a href="https://wa.link/d0av9c"><i class='bx bxl-whatsapp'></i></a>
                    <a href="https://www.instagram.com/1_darren.armani/"><i class='bx bxl-instagram'></i></a>
                    <a href="https://github.com/yunifp"><i class='bx bxl-github'></i></a>
                </div>
            </div>
        </div>


        
        <div class="login-section">

                <!-- LOGO -->
                <div class="logo1">
                    <i class='bx bxs-user-circle' ></i>
                </div>
                
            <!-- form start -->
            <div class="form_wrap">
                <div class="form_1 data_info">
                    <asp:Label ID="LblWarning" CssClass="Text-danger" runat="server" Text=""></asp:Label> 
                    <h2>ADMIN</h2>
                    <form method="post">
                        <div class="form_container">
                            <div class="input_wrap">
                                <label for="email_address">Email</label>
                                <asp:TextBox ID="TxtUser" runat="server" type="email" placeholder="email anda"></asp:TextBox>
                            </div>
                            <div class="input_wrap">
                                <label for="password">Password</label>
                                <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" placeholder="password anda"></asp:TextBox>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- form end -->

            <div class="dont">
                <p>Belum memiliki akun?.</p><a href="register.aspx" class="mb-3">Daftar</a>
            </div>


            <!-- btns start -->
            <div class="btns_wrap">
                <div class="common_btns form_1_btns">
                  <asp:Button ID="BtnLogin" type="submit" OnClick="BtnLogin_Click" CssClass="btn btn-warning button" runat="server" Text="Login" />
               </div>
            </div>
            <!-- btns end -->
        </div>
    </div>
    <!-- SIGN UP FORM CREATION -->

    <script src="login.js"></script>
    <script src="bootstrap4/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
