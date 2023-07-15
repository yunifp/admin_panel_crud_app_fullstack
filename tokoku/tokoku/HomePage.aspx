<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="tokoku.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>HomePage</title>
    <link href="bootstrap4/css/bootstrap.css" rel="stylesheet" />
    <link href="HomePage.css" rel="stylesheet" />
    <link href="additional-file/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.lineicons.com/3.0/lineicons.css">
</head>
<body>
    <form id="form1" runat="server">
    <div class="sidebar">
      <div class="logo-details">
        <i class='bx bx-hive'></i>
        <span class="logo_name">NNgoding.id</span>
      </div>
      <ul class="nav-links">
        <li>
          <a href="#" class="active">
            <i class="bx bx-grid-alt"></i>
            <span class="links_name">Admin Panel</span>
          </a>
        </li>
        <li>
        </li>
        <li class="log_out">
          <a href="login.aspx">
            <i class="bx bx-log-out"></i>
            <span class="links_name">Keluar</span>
          </a>
        </li>
      </ul>
    </div>
    <section class="home-section">
      <nav>
        <div class="sidebar-button">
          <i class="bx bx-menu sidebarBtn"></i>
          <span class="dashboard">Admin Panel</span>
        </div>
        <div class="search-box">
          <input type="text" placeholder="Cari..." />
          <i class="bx bx-search"></i>
        </div>
        
      </nav>

      <div class="home-content">
        <div class="overview-boxes">
          <div class="box">
            <div class="right-side">
              <div class="box-topic">Pelanggan</div>
              <div class="number">10+</div>
            </div>
            <i class="bx bx-user cart"></i>
          </div>
          <div class="box">
            <div class="right-side">
              <div class="box-topic">Karyawan</div>
              <div class="number">8</div>
            </div>
            <i class="bx bxs-user-account cart two"></i>
          </div>
          <div class="box">
            <div class="right-side">
              <div class="box-topic">Proyek Selesai</div>
              <div class="number">10+</div>
            </div>
            <i class="bx bxs-calendar-check cart three"></i>
          </div>
          <div class="box">
            <div class="right-side">
              <div class="box-topic">Disukai</div>
              <div class="number">10+</div>
            </div>
            <i class="bx bxs-heart cart four"></i>
          </div>
        </div>

        <div class="sales-boxes">
          <div class="recent-sales box">
          <div class="title mb-2">Proyek</div>
             <div class="button mb-2">
                 <button class="btn btn-primary" type="button" data-target="#ModalTambah" data-toggle="modal"><i class="lni lni-cart"></i> Tambah Produk</button>
            </div>
                <asp:Repeater ID="RptTampilBarang" runat="server">
                    <HeaderTemplate>

                   
                         <table id="Mytable" class="table table-striped table-hover table-borderless">
                            <thead>
                                <tr>
                                    <th>Kode</th>
                                    <th>Nama Produk</th>
                                    <th>Waktu Pengerjaan</th>
                                    <th>Kategori</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                              <tr>
                                <td><%# Eval("KodeBarang")%></td>
                                <td><%# Eval("NamaProduk")%></td>
                                <td><%# Eval("WaktuPengerjaan")%></td>
                                <td><%# Eval("Kategori")%></td>
                                <td>
                                    <a id="Edit_Barang" data-toggle="modal" data-target="#ModalEdit"
                                        data-id="<%# Eval("KodeBarang") %>"
                                        data-nama="<%# Eval("NamaProduk") %>"
                                        data-waktu="<%# Eval("WaktuPengerjaan") %>"
                                        data-katag="<%# Eval("Kategori") %>"
                                        class="btn-warning btn-sm">Edit</a>
                                </td>
                             </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                         </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>

          </div>

             <!-- Modal -->
                <div class="modal fade" id="ModalTambah" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Tambah Produk</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Nama Produk"></asp:Label>
                            <asp:TextBox ID="TxtNamaProduk" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Waktu Pengerjaan"></asp:Label>
                            <asp:TextBox ID="TxtWaktuPengerjaan" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Kategori"></asp:Label>
                             <asp:DropDownList ID="DdlKategori" CssClass="form-control" runat="server">
                                 <asp:ListItem> --Tipe Project--</asp:ListItem>
                                 <asp:ListItem> Custom Fullstack WebApp</asp:ListItem>
                                 <asp:ListItem> Fullstack WebApp</asp:ListItem>
                                 <asp:ListItem> Custom Design WebApp</asp:ListItem>
                                 <asp:ListItem> Design WebApp</asp:ListItem>
                                 
                             </asp:DropDownList>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Batakkan</button>
                          <asp:Button ID="BtnSave" OnClick="BtnSave_Click" CssClass="btn btn-primary" runat="server" Text="Simpan" />
                      </div>
                    </div>
                  </div>
                </div>

            <!-- Modal edit-->
                <div class="modal fade" id="ModalEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title">Edit Produk</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                           <div class="form-group">
                            <asp:Label ID="Label7" runat="server" Text="Kode Produk"></asp:Label>
                            <asp:TextBox ClientIDMode="Static" ID="TxtEditKode" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="Nama Produk"></asp:Label>
                            <asp:TextBox ClientIDMode="Static" ID="TxtEditNama" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label5" runat="server" Text="Waktu Pengerjaan"></asp:Label>
                            <asp:TextBox ClientIDMode="Static" ID="TxtEditWaktu" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <asp:Label ID="Label6" runat="server" Text="Kategori"></asp:Label>
                             <asp:DropDownList ClientIDMode="Static" ID="DdlEditKategori" CssClass="form-control" runat="server">
                                 <asp:ListItem> --Tipe Project--</asp:ListItem>
                                 <asp:ListItem> Custom Fullstack WebApp</asp:ListItem>
                                 <asp:ListItem> Fullstack WebApp</asp:ListItem>
                                 <asp:ListItem> Custom Design WebApp</asp:ListItem>
                                 <asp:ListItem> Design WebApp</asp:ListItem>
                             </asp:DropDownList>
                        </div>
                      </div>
                      <div class="modal-footer">
                          <asp:Button ID="BtnHapus" OnClick="BtnHapus_Click" CssClass="btn btn-danger" runat="server" Text="Hapus" />
                          <asp:Button ID="BtnEdit" OnClick="BtnEdit_Click" CssClass="btn btn-primary" runat="server" Text="Simpan" />
                      </div>
                    </div>
                  </div>
                </div>



          <div class="top-sales box">
            <div class="title">Admin</div>
            <ul class="top-sales-details">
               <asp:Repeater ID="RptTampilAdmin" runat="server">
                    <HeaderTemplate>                  
                         <table id="Mytable" class="table table-striped table-hover table-borderless">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>email</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                              <tr>
                                <td><%# Eval("id")%></td>
                                <td><%# Eval("email")%></td>
                                <td>
                                    <a id="kick_admin" data-toggle="modal" data-target="#ModalKick"
                                        data-id="<%# Eval("id") %>"
                                        data-email="<%# Eval("email") %>"
                                        class="btn-danger btn-sm">Edit</a>
                                </td>
                             </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                         </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </ul>

            <!-- Modal kick-->
                <div class="modal fade" id="ModalKick" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title">Kick Admin</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                           <div class="form-group">
                            <asp:Label ID="Label8" runat="server" Text="Id Admin"></asp:Label>
                            <asp:TextBox ClientIDMode="Static" ID="TxtKickId" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                      </div>
                      <div class="modal-footer">
                          <asp:Button ID="Kickbutton1" OnClick="Kickbutton1_Click"  CssClass="btn btn-danger" runat="server" Text="Hapus" />
                      </div>
                    </div>
                  </div>
                </div>
          </div>
        </div>
      </div>
    </section>
    </form>
    <script src="additional-file/js/jquery-3.3.1.slim.min.js"></script>
    <script src="additional-file/js/popper.min.js"></script>
    <script src="bootstrap4/js/bootstrap.min.js"></script>
    <script src="additional-file/js/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#Mytable').DataTable();
        })

        $(document).on("click", "#Edit_Barang", function () {
            var _kode = $(this).data("id");
            var _nama = $(this).data("nama");
            var _waktu = $(this).data("waktu");
            var _katag = $(this).data("katag");


            $("#ModalEdit #TxtEditKode").val(_kode);
            $("#ModalEdit #TxtEditNama").val(_nama);
            $("#ModalEdit #TxtEditWaktu").val(_waktu);
            $("#ModalEdit #DdlEditKategori").val(_katag);
            $("#ModalEdit #TxtEditKode").attr("ReadOnly", true);

        })

        $(document).on("click", "#kick_admin", function () {
            var _id = $(this).data("id");
            var _email = $(this).data("email");


            $("#ModalKick #TxtKickId").val(_id);
            $("#ModalKick #TxtKickId").attr("ReadOnly", true);

        })
    </script>
    <script>
        let sidebar = document.querySelector(".sidebar");
        let sidebarBtn = document.querySelector(".sidebarBtn");
        sidebarBtn.onclick = function () {
            sidebar.classList.toggle("active");
            if (sidebar.classList.contains("active")) {
                sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
            } else sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
        };
    </script>
</body>
</html>
