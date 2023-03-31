<?php
    require_once('model/database.php');
    require_once('model/session.php');
?>

<?php
    class giohang{
        private $db;

        public function __construct(){
            $this->db = new Database();
        }

        public function add_cart($idsp) {
                $soluong = 1;
                $query = "SELECT * FROM san_pham WHERE ma_sp = '$idsp'";
                $result = $this->db->select($query);
                $row = $result->fetch_array();

                if($row) {
                    $new_product = [ 'ma_dm' => $row['ma_dm'], 'id' => $idsp, 'tensanpham' => $row['ten_sp'] ,'soluong' => $soluong, 'giasp' => $row['gia'], 
                    'hinhanh' => $row['anh'] ];
                
                    if(isset($_SESSION['product'][$idsp])) {
                        if($_SESSION['product'][$idsp]['soluong'] < $row['so_luong']){
                            $_SESSION['product'][$idsp]['soluong'] += 1;
                        }
                    } else {
                        $_SESSION['product'][$idsp] = $new_product;
                    }
                } 
        }
        
        public function cong($idsp) {
            $query = "SELECT * FROM san_pham WHERE ma_sp = '$idsp'";
            $result = $this->db->select($query);
            $row = $result->fetch_array();
            if($_SESSION['product'][$idsp]['soluong'] < $row['so_luong'])
                $_SESSION['product'][$idsp]['soluong'] += 1;
        }

        public function tru($idsp) {
            if($_SESSION['product'][$idsp]['soluong'] > 1)
                $_SESSION['product'][$idsp]['soluong'] -= 1;
        }

        public function xoa($idsp) {
            session::unset('product',$idsp);
        }

        public function checkAddress($user) {
            $sql = "SELECT * 
                    FROM Khachhang kh JOIN Dia_Chi_GH dc WHERE kh.KH_Username = '$user' and kh.KH_Ma = dc.KH_Ma";
            $result = $this->db->select($sql);
            if($result == false) {
                return false;
            } else {
                $row = $result->fetch_array();
                return $row['DCGH'];
            }
        }

        public function get_makh($user) {
            $query = "SELECT * FROM Khachhang WHERE KH_Username = '$user'";
            $result = $this->db->select($query);
            $row = $result->fetch_array();
            if($result == null) {
                return false;
            } else {
                return $row['KH_Ma'];
            }
        }

        public function muahang($mahd,$makh,$sum,$ngaydh,$ngaygh,$trangthai) {
            $sql = "INSERT INTO Don_Hang VALUES('$mahd','$makh','$sum','$ngaydh','$ngaygh','$trangthai')";
            $result = $this->db->insert($sql);

            foreach($_SESSION['product'] as $cart_item) {
                $soluong = $cart_item['soluong'];
                $idsp = $cart_item['id'];
                $tensp = $cart_item['tensanpham'];
    
                $sql_ctdh = "INSERT INTO ct_don_hang VALUES('$mahd','$idsp','$tensp',$soluong)";
                $result_ct = $this->db->insert($sql_ctdh);
            }

            if($result) {
                $msg = "<span class='success'>Đặt hàng thành công</span>";
                Session::unset_cart('product');
                return $msg;
            }else{
                $msg = "<span class='success'>Đặt hàng không thành công</span>";
                return $msg;
            }
        }

        public function themdiachi($user,$dc){
            $query = "INSERT INTO dia_chi_gh VALUES('$user','$dc')";
            $result = $this->db->insert($query);
            if($result) {
                $msg = "<span class='success'>Thêm dịa chỉ thành công</span>";
                return $msg;
            }else{
                $msg = "<span class='success'>Thêm địa chỉ không thành công</span>";
                return $msg;
            }
            header('Location: giohang.php?action=dathang');
        }

        public function thaydoidiachi($user,$dc){
            $query = "UPDATE dia_chi_gh SET DCGH = '$dc' WHERE KH_Ma = '$user'";
            $result = $this->db->update($query);
            if($result) {
                $msg = "<span class='success'>Cập nhật dịa chỉ thành công</span>";
                return $msg;
            }else{
                $msg = "<span class='success'>Cập nhật địa chỉ không thành công</span>";
                return $msg;
            }
            // header('Location: giohang.php?action=dathang');
        }

        public function lietke(){
            $query = "SELECT * FROM don_hang dh join ct_don_hang ct ON dh.Ma_Don = ct.Ma_Don WHERE Trangthai = 1";
            $result = $this->db->select($query);
            return $result;
        }

        public function lietkeDH(){
            $query = "SELECT * FROM don_hang WHERE Trangthai = 1";
            $result = $this->db->select($query);
            return $result;
        }

        public function lietkeDHCXN(){
            $query = "SELECT * FROM don_hang dh join ct_don_hang ct ON dh.Ma_Don = ct.Ma_Don WHERE Trangthai = 0";
            $result = $this->db->select($query);
            return $result;
        }

        public function lietkectdh($mahd) {
            $query = "SELECT * FROM ct_don_hang WHERE Ma_Don = '$mahd'";
            $result = $this->db->select($query);
            return $result;
        }

        public function XOADH($ID){
            $query1 = "DELETE FROM ct_don_hang WHERE Ma_Don = '$ID'";
            $query2 = "DELETE FROM Don_Hang WHERE Ma_Don = '$ID'";
            $this->db->delete($query1);
            $this->db->delete($query2);
        }
    }

    class DCGH{
        private $db;

        public function __construct(){
            $this->db = new Database();
        }

        public function GetTinh() {
            $query = "SELECT * FROM province";
            $result = $this->db->select($query);
            return $result;
        }

        public function GetQuanhuyen($idtinh) {
            $query = "SELECT * FROM district where province_id = '$idtinh'";
            $result = $this->db->select($query);
            return $result;
        }
    }
?>