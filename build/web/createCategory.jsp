<%-- 
    Document   : createCategory
    Created on : Jun 10, 2022, 11:11:02 AM
    Author     : duong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap');
    </style>
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
        integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <script src="node_modules/jquery/dist/jquery.slim.min.js"></script>
    <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="navbar-top">
        <div class="navbar-header">
            <!-- logo -->
            <div class="col-sm-3 logo">
                <a href="#"><img src="./img/logo.png" height="80" alt=""></a>
            </div>
            <!-- name web -->
            <div class="col-sm-6 d-flex align-items-center justify-content-center text-center name-website">
                <a href="#">DRS - FPT University HCM</a>
            </div>
            <!-- welcome -->
            <div class="col-sm-3 welcome d-flex align-items-center justify-content-end">
                <div class="nav-item dropdown ">
                    <a class="nav-link dropdown-toggle d-flex align-items-center user-info" href="#"
                        id="navbarDropdownMenuLink" role="button" data-toggle="dropdown">
                        <img src="https://scontent.fsgn5-11.fna.fbcdn.net/v/t1.6435-9/148200636_528659258096027_8966625421411191162_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=dzMdGh7CUt4AX978A2p&_nc_ht=scontent.fsgn5-11.fna&oh=00_AT_T8cl7XJeQ7xnVIt7NSbBeFkMmZy_8FtaihBZKvwhxjw&oe=62BB3767"
                            class="rounded-circle" height="20">
                        <p class="user-name">Thienpnse150137</p>
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li>
                            <a class="dropdown-item" href="myprofile.html">My profile</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="login.html">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="manage-navbar">
        <a href="iddevicenamager.html">
            <button class="btn btn-secondary">
                Manage Devices
            </button>
        </a>
        <a href="warehousemanager.html">
            <button class="btn btn-secondary">
                Manage Warehouse
            </button>
        </a>
        <a href="#">
            <button class="btn btn-primary">
                Manage Catagory
            </button>
        </a>
    </div>
    <div class="row manager-function d-flex align-items-center">
        <div class="col-sm-6 left-function text-center">
            <a href="#" id="insert-new-catagory">
                <button class="btn " type="button">
                    <i class="fas fa-plus-circle"></i>
                    <label class="button-insert">Insert New Catagory</label>
                </button>
            </a>
            <div id="detailModal" class="modal fade" role="dialog">
                <div class="modal-dialog modal-lg" role="content">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Insert New Category</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-row">
                                    <div class="form-group col-sm-12 d-flex">
                                        <h5 class="col-sm-4">Cate ID</h5>
                                        <input class="col-sm-6" type="text" placeholder="Input new Cate ID">
                                    </div>
                                    <div class="form-group col-sm-12 d-flex">
                                        <h5 class="col-sm-4">Cate Name</h5>
                                        <input class="col-sm-6" type="text" placeholder="Input new Cate Name">
                                    </div>
                                    <div class="col-sm-12">
                                        <button class="btn btn-success col-sm-4"> 
                                            Insert                      
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <button type="button" class="btn">
                <!-- <i class="fas fa-plus-circle"></i>
                <label for="">insert new Device</label> -->
                <div class="nav-item dropdown d-flex align-items-center">
                    <a class="nav-link dropdown-toggle d-flex align-items-center" href="#" id="navbarDropdownMenuLink"
                        role="button" data-toggle="dropdown">
                        <input type="submit" value="Ram">
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li>
                            <a class="dropdown-item" href="#">Ram</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">CPU</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">VGA</a>
                        </li>
                    </ul>
                </div>
            </button>
            <!-- <button type="button" class="btn">
                <label for="">Category</label>
                <i class="fas fa-arrow-down"></i>
            </button>-->
            <button type="button" class="btn">
                <label for="">Filter</label>
            </button>
        </div>
        <div class="col-sm-6 right-function">
            <div class="search">
                <form action="" id="search-box">
                    <div class="row search-box-wrapper">
                        <input type="text" id="search-text" class="col-8" placeholder="Tìm">
                        <button id="search-btn" class="col-2"><i class="fas fa-search "></i></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="table-wapper col-sm-12">
        <table class="table text-center">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Cate ID</th>
                    <th>Cate Name</th>
                    <th>Delete</th>
                    <th>Update</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="text" class="text-center" value="01"></td>
                    <td><input type="text" class="text-center" value="01"></td>
                    <td><input type="text" class="text-cente    r" value="01"></td>
                    <td><button type="button" class="btn btn-dark">Delete</button></td>
                    <td><button type="button" class="btn btn-dark">Update</button></td>
                    <td>
                        <a href="#" id="insert-new-description">
                            <button class="btn " type="button"><i class="fas fa-plus-circle"> Insert New Description</i></button>
                        </a>
                        <div id="detailModal-description" class="modal fade" role="dialog">
                            <div class="modal-dialog modal-lg" role="content">
                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Insert New Description</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="form-row">
                                                <div class="form-group col-sm-12 d-flex">
                                                    <h5 class="col-sm-4">Description Name</h5>
                                                    <input class="col-sm-6" type="text" placeholder="Input new Cate ID">
                                                </div>
                                                <div class="col-sm-12">
                                                    <button class="btn btn-success col-sm-4"> 
                                                        Insert                      
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                    <th>
                        <button class="btn btn-light" id="dropdown-firsttable">
                            <i class="fas fa-caret-down"></i>
                        </button>
                    </th>
                </tr>
            </tbody>
        </table>
        <div class="container">
            <div class="table-wapper col-sm-12" id="second-table">
                <table class="table text-center">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Description Name</th>
                            <th>Delete</th>
                            <th>Update</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="text" class="text-center" value="01"></td>
                            <td><input type="text" class="text-center" value="01"></td>
                            <td><button type="button" class="btn btn-dark">Delete</button></td>
                            <td><button type="button" class="btn btn-dark">Update</button></td>
                            <th>
                                <a href="#" id="insert-new-detail">
                                    <button class="btn " type="button"><i class="fas fa-plus-circle"> Insert New Description</i></button>
                                </a>
                                <div id="detailModal-detail" class="modal fade" role="dialog">
                                    <div class="modal-dialog modal-lg" role="content">
                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Insert New Detail of Description</h4>
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <form>
                                                    <div class="form-row">
                                                        <div class="form-group col-sm-12 d-flex">
                                                            <h5 class="col-sm-4">Detail Name</h5>
                                                            <input class="col-sm-6" type="text" placeholder="Input new Detail Name">
                                                        </div>
                                                        <div class="col-sm-12">
                                                            <button class="btn btn-success col-sm-4"> 
                                                                Insert                      
                                                            </button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </th>
                            <th>
                                <button class="btn btn-light" id="dropdown-second-table">
                                    <i class="fas fa-caret-down"></i>
                                </button>
                            </th>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="table-wapper col-sm-8" id="third-table">
                <table class="table text-center">
                    <thead>
                        <tr>
                            <th>              </th>
                            <th>STT</th>
                            <th>Detail Name</th>
                            <th>Delete</th>
                            <th>Update</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>f</td>
                            <td><input type="text" class="text-center" value="01"></td>
                            <td><input type="text" class="text-center" value="01"></td>
                            <td><button type="button" class="btn btn-dark">Delete</button></td>
                            <td><button type="button" class="btn btn-dark">Update</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
    </div>
</div>
</body>
<footer></footer>
<script>
    $(document).ready(function () {
        $("#insert-new-catagory").click(function () {
            $("#detailModal").modal("show");
        });

        $("#insert-new-description").click(function () {
            $("#detailModal-description").modal("show");
        });

        $("#insert-new-detail").click(function () {
            $("#detailModal-detail").modal("show");
        });

        $('#dropdown-firsttable').click(function() {
            $('#second-table').toggle(1000);
        });

        $('#dropdown-second-table').click(function() {
            $('#third-table').toggle(1000);
        });
        $('#dropdown-firsttable').click(function() {
            $('#third-table').hide(1000);
        });
    });
</script>

</html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <h1>Input Category's information:</h1>
    <form action="MainController" method="POST">
        Category ID <input type="text" name="cateID" required=""/></br>
        Category Name <input type="text" name="cateName" required=""/></br
        <input type="submit" name="action" value="CreateCategory"/>
        <input type="reset"  value="Reset"/>
    </form>
    
</html>-->
