<?php 
    $kh = new khachhang();
    if(isset($_GET['action']) && $_GET['action'] = 'TKKH' && isset($_GET['idkh'])) {
        $id = $_GET['idkh'];
        $kh->XOATK($id);
    }
?>

<div class="row main-admin">
    <div class="row"><h4 class="name-item-admin">KHÁCH HÀNG</h4></div>
    <table class="table margin-top">
            <thead>
                <tr>
                    <th scope="col">Mã Khách Hàng</th>
                    <th scope="col">Tên khách hàng</th>
                    <th scope="col">Số Điện Thoại</th>
                    <th scope="col">Xóa tài khoản</th>
                </tr>
            </thead>
        <?php
           $dskh = $kh->lietke();
            if($dskh != false) {
            while($row = $dskh->fetch_array()) {
        ?>
            <tbody>
                <tr>
                    <td><?php echo $row['KH_Ma'] ?></td>
                    <td><?php echo $row['KH_Ten'] ?></td>
                    <td><?php echo $row['KH_SDT'] ?></td>
                    <td>
                        <div class="d-grid gap-2 d-md-block text-center" style="width: 100px">
                            <a href="?action=TKKH&idkh=<?php echo $row['KH_Ma'];?>"><button class="btn" type="button"><img class="quanli" src="../icon/bin.png" alt=""></button></a>
                        </div>
                    </td>
                </tr>
            </tbody>
        
        <?php } }?>
    </table>
</div>