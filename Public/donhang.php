<?php
    require_once('Model/session.php');
    require_once('controller/xulygiohang.php');
    $donhang = new giohang();

    if(isset($_GET['action']) && $_GET['action'] == 'choxacnhan' && isset($_GET['iddh'])) {
        $ID = $_GET['iddh'] ;
        $result = $donhang->XOADH($ID);
    }
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../Bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../icon/fontawesome-free-6.1.1-web/fontawesome-free-6.1.1-web/css/all.css">
    <script src="../Bootstrap/js/jquery-3.6.0.min.js"></script>
    <script src="../Bootstrap/js/bootstrap.bundle.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <title>Super Shop</title>
</head>
<body>
    <div class="container container-height" style="display: flex; flex-direction: column ;justify-content: space-between; ">
        <!-- Header -->
        <div class="sticky-top">
            <div>
                <div class="row align-item-ct bg-color">
                    <!-- <a href="index.php"> -->
                        <div class="col-1 center padding padding_tb">
                        <a href="index.php"><img src="../img/favicon_created_by_logaster.ico" class="logo"></a>
                        </div>
                        
                        <div class="col-2 padding padding_tb">
                        <a href="index.php"><h3 class="nameBrand">Mobile Store</h3></a>
                        </div>  
                    <!-- </a> -->
                    <nav class="navbar navbar-expand-lg navbar-light padding">
                        <div class="container-fluid">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link white-color" href="?action=choxacnhan">Đơn hàng chờ xác nhận</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link white-color" href="?action=damua">Đơn hàng đã mua</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- End header -->

        <!-- body -->
        <?php 
            if(isset($_GET['action']) && $_GET['action'] == 'choxacnhan') {
        ?>
                <div class="row main-admin">
                    <div><h4 class="name-item-admin">ĐƠN HÀNG CHỜ XÁC NHẬN</h4></div>
                    <div>
                        <a href="index.php?action=TC" style="border-color: #f12711; margin-top: 15px;" class="btn bg-color white-color">Tiếp tục mua hàng</a>
                    </div> 
                    <table class="table margin-top">
                    <thead>
                        <tr>
                            <th scope="col">Mã đơn hàng</th>
                            <th scope="col">Chi tiết</th>
                            <th scope="col">Tổng tiền</th>
                            <th scope="col">Ngày đặt hàng</th>
                            <th scope="col">Ngày giao hàng</th>
                            <th scope="col">Hủy đơn hàng</th>
                        </tr>
                    </thead>
                    <?php
                        $dsdh = $donhang->lietkeDHCXN();

                        if($dsdh != FALSE) {
                            
                        $madon = '';
                        while($row = $dsdh->fetch_array()) {
                            $ctdh = $donhang->lietkectdh($row['Ma_Don']);
                            $ct = '';
                            while($i = $ctdh->fetch_array()) {
                                $ct = $ct.$i['Ten_SP'].'   ('.$i['SoLuong'].' cái)'.'<br>';
                            }

                    ?>
                    <tbody>
                        <?php if($madon != $row['Ma_Don']) { ?>
                        <tr>
                            <td><?php echo $row['Ma_Don'] ?></td>
                            <td>
                                <?php echo $ct; ?>
                            </td>
                            <td><?php echo $row['TongTien'] ?></td>
                            <td><?php echo $row['NgayDH'] ?></td>
                            <td><?php echo $row['NgayGH'] ?></td>
                            <td>
                                <div class="d-grid gap-2 d-md-block text-center" style="width: 100px">
                                    <a href="donhang.php?action=choxacnhan&iddh=<?php echo $row['Ma_Don'];?>"><button class="btn" type="button"><img class="quanli" src="../icon/bin.png" alt=""></button></a>
                                </div>
                            </td>
                        </tr>
                        <?php } ?>
                    </tbody>
                            <?php $madon = $row['Ma_Don'] ; } }?>
                        </table>
                    </div>
            <?php }else{ ?>
                <div class="row main-admin">
                    <div><h4 class="name-item-admin">ĐƠN HÀNG ĐÃ MUA</h4></div>
                    <div>
                        <a href="index.php?action=TC" style="border-color: #f12711; margin-top: 15px;" class="btn bg-color white-color">Tiếp tục mua hàng</a>
                    </div> 
                    <table class="table margin-top">
                    <thead>
                        <tr>
                            <th scope="col">Mã đơn hàng</th>
                            <th scope="col">Chi tiết</th>
                            <th scope="col">Tổng tiền</th>
                            <th scope="col">Ngày đặt hàng</th>
                            <th scope="col">Ngày giao hàng</th>
                        </tr>
                    </thead>
                    <?php
                        $dsdh = $donhang->lietkeDH();

                
                        while($row = $dsdh->fetch_array()) {
                            $ctdh = $donhang->lietkectdh($row['Ma_Don']);
                            $ct = '';
                            while($i = $ctdh->fetch_array()) {
                                $ct = $ct.$i['Ten_SP'].'   ('.$i['SoLuong'].' cái)'.'<br>';
                            }

                    ?>
                    <tbody>
                        <tr>
                            <td><?php echo $row['Ma_Don'] ?></td>
                            <td>
                                <?php echo $ct; ?>
                            </td>
                            <td><?php echo $row['TongTien'] ?></td>
                            <td><?php echo $row['NgayDH'] ?></td>
                            <td><?php echo $row['NgayGH'] ?></td>
                        </tr>
                    </tbody>
                
                            <?php } ?>
                        </table>
                    </div>
            <?php } ?>
        <!-- End body -->

        <!-- Footer -->
        <div>
            <?php include ('include/footer.php');?>
        </div>
        <!-- End Footer -->
    </div>

</body>
</html>

