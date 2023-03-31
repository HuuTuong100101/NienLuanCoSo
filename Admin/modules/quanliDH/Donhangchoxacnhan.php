<?php  
    $dh = new donhang();
    if(isset($_GET['iddh'])) {
        if($_GET['action'] == 'DHCXN') {
            $ID = $_GET['iddh'] ;
            $result = $dh->XNDH($ID);
        } elseif($_GET['action'] == 'XDHCXN') {
            $ID = $_GET['iddh'] ;
            $result = $dh->XOADH($ID);
        }
    }
?>

<div class="row main-admin">
    <div><h4 class="name-item-admin">ĐƠN HÀNG CHỜ XÁC NHẬN</h4></div>
    <table class="table margin-top">
            <thead>
                <tr>
                    <th scope="col">Mã đơn hàng</th>
                    <th scope="col">Mã khách hàng</th>
                    <th scope="col">Tổng tiền</th>
                    <th scope="col">Ngày đặt hàng</th>
                    <th scope="col">Ngày giao hàng</th>
                    <th scope="col">Xác nhận</th>
                    <th scope="col">Xóa đơn hàng</th>
                </tr>
            </thead>
        <?php
            $dsdh = $dh->lietkeDHCXN();
            if($dsdh != FALSE) {
            while($row = $dsdh->fetch_array()) {
        ?>
            <tbody>
                <tr>
                    <td><?php echo $row['Ma_Don'] ?></td>
                    <td><?php echo $row['KH_Ma'] ?></td>
                    <td><?php echo $row['TongTien'] ?></td>
                    <td><?php echo $row['NgayDH'] ?></td>
                    <td><?php echo $row['NgayGH'] ?></td>
                    <td>
                        <div class="d-grid gap-2 d-md-block text-center" style="width: 70px">
                            <a href="index.php?action=DHCXN&iddh=<?php echo $row['Ma_Don'];?>"><button class="btn" type="button"><img class="quanli" src="../icon/check-mark.png" alt=""></button></a>
                        </div>
                    </td>
                    <td>
                        <div class="d-grid gap-2 d-md-block text-center" style="width: 100px">
                            <a href="index.php?action=XDHCXN&iddh=<?php echo $row['Ma_Don'];?>"><button class="btn" type="button"><img class="quanli" src="../icon/bin.png" alt=""></button></a>
                        </div>
                    </td>
                </tr>
            </tbody>
        
        <?php } }?>
    </table>
</div>