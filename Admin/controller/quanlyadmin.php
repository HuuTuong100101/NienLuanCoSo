<?php 
    require_once('Model/database.php');
?>


<?php
    class danhmuc {
        private $db;

        public function __construct(){
            $this->db = new Database();
        }

        public function themdanhmuc($ma,$ten,$anh) {
            if(empty($ma) || empty($ten) || empty($anh)) {
                $alert = "<span class='error'>Bạn phải nhập đầy đủ các mục *</span>";
                return $alert;
            } else {
                $query = "INSERT INTO Danh_Muc VALUES ('$ma','$ten','$anh')";
                $result = $this->db->insert($query);

                if($result) {
                    $alert = "<span class='success'>Thêm danh mục thành công</span>";
                    return $alert;
                } else {
                    $alert = "<span class='error'>Thêm danh mục không thành công</span>";
                    return $alert;
                }
            }
        }

        public function lietke(){
            $query = "SELECT * FROM Danh_Muc";
            $result = $this->db->select($query);
            return $result;
        }

        public function iddm($iddm){
            $query = "SELECT * FROM Danh_Muc WHERE ma_dm = '$iddm'";
            $result = $this->db->select($query);
            return $result;
        }

        public function xoadanhmuc($iddm) {
            $query = "DELETE FROM Danh_Muc WHERE ma_dm = '$iddm'";
            $result = $this->db->delete($query);
            if($result) {
                $alert = "<span class='success'>Xóa danh mục thành công</span>";
                return $alert;
            } else {
                $alert = "<span class='error'>Xóa danh mục không thành công</span>";
                return $alert;
            }
        }

        public function update($ma,$ten,$anh,$iddm){
            $query = "UPDATE danh_muc SET ma_dm = '$ma', ten = '$ten', anh = '$anh' WHERE ma_dm = '$_GET[iddm]'";
            $result = $this->db->update($query);

            if($result) {
                $alert = "<span class='success'>Cập nhật danh mục thành công</span>";
                return $alert;
            } else {
                $alert = "<span class='error'>Cập nhật danh mục không thành công</span>";
                return $alert;
            }
        }
    }

    class sanpham{
        private $db;

        public function __construct(){
            $this->db = new Database();
        }

        public function themsanpham($masp,$madm,$ten,$soluong,$gia,$anh,$noidung) {
            if(empty($masp) || empty($ten) || empty($anh) || empty($madm) || empty($soluong) || empty($gia) || empty($noidung)) {
                $alert = "<span class='error'>Bạn phải nhập đầy đủ các mục *</span>";
                return $alert;
            } else {
                $query = "INSERT INTO san_pham VALUES ('$masp','$madm','$ten','$soluong','$gia','$anh','$noidung')";
                $result = $this->db->insert($query);

                if($result) {
                    $alert = "<span class='success'>Thêm sản phẩm thành công</span>";
                    return $alert;
                } else {
                    $alert = "<span class='error'>Thêm sản phẩm không thành công</span>";
                    return $alert;
                }
            }
        }

        public function lietke(){
            $query = "SELECT * FROM san_pham";
            $result = $this->db->select($query);
            return $result;
        }

        public function idsp($idsp){
            $query = "SELECT * FROM san_pham WHERE ma_sp = '$idsp'";
            $result = $this->db->select($query);
            return $result;
        }

        public function xoasanpham($idsp) {
            $query = "DELETE FROM san_pham WHERE ma_sp = '$idsp'";
            $result = $this->db->delete($query);
            if($result) {
                $alert = "<span class='success'>Xóa sản phẩm thành công</span>";
                return $alert;
            } else {
                $alert = "<span class='error'>Xóa sản phẩm không thành công</span>";
                return $alert;
            }
        }

        public function update($masp,$madm,$ten,$soluong,$gia,$anh,$noidung){
            $query = "UPDATE san_pham SET ma_sp = '$masp',ma_dm = '$madm',ten_sp = '$ten', so_luong = '$soluong',gia = '$gia', anh = '$anh', noidung = '$noidung' WHERE ma_sp = '$_GET[idsp]'";
            $result = $this->db->update($query);

            if($result) {
                $alert = "<span class='success'>Cập nhật sản phẩm thành công</span>";
                return $alert;
            } else {
                $alert = "<span class='error'>Cập nhật sản phẩm không thành công</span>";
                return $alert;
            }
        }
    }

    class khachhang{

        private $db;

        public function __construct(){
            $this->db = new Database();
        }

        public function lietke(){
            $query = "SELECT * FROM Khachhang";
            $result = $this->db->select($query);
            return $result;
        }

        public function XOATK($ID){
            //
            $query3 = "SELECT * FROM Don_hang Where KH_Ma = '$ID'";
            $result = $this->db->select($query3);
            if($result != false) {
                while($row = $result->fetch_array()) {
                    $iddh = $row['Ma_Don'];
                    $query4 = "DELETE FROM ct_don_hang WHERE Ma_Don = '$iddh'";
                    $this->db->delete($query4);
                }
                //
                $query1 = "DELETE FROM don_hang WHERE KH_Ma = '$ID'";
                $query5 = "DELETE FROM dia_chi_gh WHERE KH_Ma = '$ID'";
                $query2 = "DELETE FROM Khachhang WHERE KH_Ma = '$ID'";
                $this->db->delete($query1);
                $this->db->delete($query5);
                $this->db->delete($query2);
            } else {
                $query2 = "DELETE FROM Khachhang WHERE KH_Ma = '$ID'";
                $this->db->delete($query2);
            }
        }
    }

    class donhang{

        private $db;

        public function __construct(){
            $this->db = new Database();
        }

        public function lietke(){
            $query = "SELECT * FROM don_hang dh join dia_chi_gh dc on dh.KH_Ma = dc.KH_Ma WHERE dh.Trangthai = 1";
            $result = $this->db->select($query);
            return $result;
        }

        public function lietkeDHCXN(){
            $query = "SELECT * FROM don_hang WHERE Trangthai = 0";
            $result = $this->db->select($query);
            return $result;
        }

        public function total_hoadon(){
            $query = "SELECT count(*) FROM don_hang";
            $result = $this->db->count($query);
            $array = $result->fetch_array();
            return $array['count(*)'];
        }

        public function total_money(){
            $query = "SELECT * FROM don_hang";
            $result = $this->db->select($query);
            $SUM = 0;
            if($result != false) {
                while($array = $result->fetch_array()){
                    $SUM += $array['TongTien'];
                }
                return number_format($SUM,0,',','.');  
            }else {
                return $SUM;
            }
        }

        public function total_users(){
            $query = "SELECT count(*) FROM Khachhang";
            $result = $this->db->count($query);
            $array = $result->fetch_array();
            return $array['count(*)'];
        }

        public function total_products(){
            $query = "SELECT count(*) FROM san_pham";
            $result = $this->db->count($query);
            $array = $result->fetch_array();
            return $array['count(*)'];
        }

        public function XNDH($ID){
            $query = "UPDATE Don_Hang SET Trangthai = 1 WHERE Ma_Don = '$ID'";
            $result = $this->db->update($query);
        }

        public function XOADH($ID){
            $query1 = "DELETE FROM ct_don_hang WHERE Ma_Don = '$ID'";
            $query2 = "DELETE FROM Don_Hang WHERE Ma_Don = '$ID'";
            $this->db->delete($query1);
            $this->db->delete($query2);
        }
    }
?>