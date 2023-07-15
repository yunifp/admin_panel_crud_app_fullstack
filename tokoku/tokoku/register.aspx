<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="tokoku.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar</title>
    <link rel="stylesheet" href="register.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <!-- NAVBAR CREATION -->
    <header class="header">
        <nav class="navbar">
            <a href="https://who-is-darren-armani.darrenarmani.repl.co">Portfolio Saya (Kumpulan Project)</a>
            <a href="https://wa.link/d0av9c">Pusat Bantuan</a>
            <!--GANTI TEMA -->
            <a><i class='bx bxs-sun' onclick="gantiTema()"></i></a>
        </nav>

    </header>
    <!-- Daftar FORM CREATION -->
    <div class="background"></div>
    <div class="container">
        <div class="item">
            <h2 class="logo"><i class='bx bx-pyramid'></i></i> NyobaNgoding.id</h2>
            <div class="text-item">
                <h2>Selamat Datang <br><span>
                        Belum Memiliki Akun?
                    </span></h2>
                <h1>Buat Sekarang Juga.!!!</h1>
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
            <!-- header start -->
            <div class="header">
                <ul>
                    <li class="active form_1_progressbar">
                        <div>
                            <p>1</p>
                        </div>
                    </li>
                    <li class="form_2_progressbar">
                        <div>
                            <p>2</p>
                        </div>
                    </li>
                    <li class="form_3_progressbar">
                        <div>
                            <p>3</p>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- header end -->

            <!-- form start -->
            <div class="form_wrap">
                <div class="form_1 data_info">
                    <h2>Daftar</h2>
                    <form action="" method="post">
                        <div class="form_container">
                            <div class="input_wrap">
                                <label for="email_address">Email</label>
                                <asp:TextBox ID="email" runat="server"  placeholder="masukan email anda"></asp:TextBox>
                            </div>
                            <div class="input_wrap">
                                <label for="password">Password</label>
                                <asp:TextBox ID="password" runat="server"  placeholder="buat password"></asp:TextBox>
                            </div>
                            <div class="input_wrap">
                                <label for="password">Konfirmasi Password</label>
                                <asp:TextBox ID="password1" runat="server"  placeholder="konfirmasi password anda"></asp:TextBox>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="form_2 data_info" style="display: none">
                    <h2>Daftar</h2>
                    <form action="" method="post">
                        <div class="form_container">
                            <div class="input_wrap">
                                <label for="first_name">Nama Depan</label>
                                <asp:TextBox ID="first_name" runat="server"  placeholder="nama depan anda"></asp:TextBox>
                            </div>
                            <div class="input_wrap">
                                <label for="last_name">Nama Akhir</label>
                                <asp:TextBox ID="last_name" runat="server"  placeholder="nama belakang anda"></asp:TextBox>
                            </div>
                            <div class="input_wrap">
                                <label for="user_name">Nomor Hp</label>
                                <asp:TextBox ID="phone" runat="server"  placeholder="masukan nomor anda"></asp:TextBox>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="form_3 data_info" style="display: none">
                    <h2>Daftar</h2>
                    <form action="" method="post">
                        <div class="form_container">
                            <div class="input_wrap">
                                <label for="current_company">Negara</label>
                                <asp:TextBox ID="country" runat="server"  placeholder="negara asal"></asp:TextBox>
                            </div>
                            <div class="input_wrap">
                                <label for="total_experience">Kota</label>
                                <asp:TextBox ID="city" runat="server"  placeholder="kota asal"></asp:TextBox>
                            </div>
                            <div class="input_wrap">
                                <label for="designation">Kode Pos</label>
                                <asp:TextBox ID="postal_code" runat="server"  placeholder="kode pos"></asp:TextBox>
                            </div>
                        </div>
                    </form>
                </div>


            </div>
            <!-- form end -->

            <!-- dont have a account -->
            <div class="dont">
                <p>sudah memiliki akun?.</p><a href="login.aspx">Masuk</a>
            </div>


            <!-- btns start -->
            <div class="btns_wrap">
                <div class="common_btns form_1_btns">
                    <button type="button" class="btn_next">Next</button>
                </div>
                <div class="common_btns form_2_btns" style="display: none">
                    <button type="button" class="btn_back">Back</button>
                    <button type="button" class="btn_next">Next</button>
                </div>
                <div class="common_btns form_3_btns" style="display: none">
                    <button type="button" class="btn_back">Back</button>
                    <asp:Button ID="BtnLogin" OnClick="BtnLogin_Click"  CssClass="btn btn-warning button" runat="server" Text="Submit" />
            
                </div>
            </div>
            <!-- btns end -->
        </div>
    </div>
    <!-- SIGN UP FORM CREATION -->
    <script src="bootstrap4/js/bootstrap.min.js"></script>
    <script src="register.js"></script>
    </form>
</body>
</html>
