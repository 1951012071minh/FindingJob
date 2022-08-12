<%-- 
    Document   : signincompany
    Created on : Jul 31, 2022, 11:04:03 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="signin_company bg-dark">
    <div style="height: 50vh;">
        <form class="modal-content animate" action="/action_page.php" method="post">
            <div class="imgcontainer">
                <h3>Sign in for company</h3>
            </div>
            <hr class="hr_signlog">
            <div class="container">
                <P><b>THÔNG TIN TÀI KHOẢN</b></P>
                <label for="uname"><b>Username</b> <b class="text-danger">*</b></label>
                <input type="text" class="input_username" placeholder="Enter Username" name="uname" required>

                <label for="psw"><b>Password</b> <b class="text-danger">*</b></label>
                <input type="password" class="input_password" placeholder="Password" name="psw" required>
                <label for="psw"><b>Enter password</b> <b class="text-danger">*</b></label>
                <input type="password" class="input_password" placeholder="Enter Password" name="psw" required>

                <hr class="hr_signlog">
                <P><b>THÔNG TIN NGUOI ÐAI DIEN</b></P>
                <label for="psw"><b>Họ và tên</b> <b class="text-danger">*</b></label>
                <input type="text" class="input_text" placeholder="Enter Name" name="name" required>
                <label for="psw"><b>Số điện thoại</b> <b class="text-danger">*</b></label>
                <input type="tel" class="input_text" placeholder="Enter phone number" name="phone"
                       pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}"  required>
                <hr class="hr_signlog">
                <P><b>THÔNG TIN DOANH NGHIỆP</b></P>
                    <label for="psw"><b>Tên công ty</b> <b class="text-danger">*</b></label>
                    <input type="text" class="input_text" placeholder="Enter the name of the company" name="namecompany"
                        required>
                    <!-- <label for="psw"><b>Lĩnh vực hoạt động</b> <b class="text-danger">*</b></label> -->
                    <br>

                  
                    <label for="addresscompany"><b>Địa chỉ</b> <b class="text-danger">*</b></label>
                    <input type="text" class="input_text" placeholder="Enter address" name="addresscompany"
                        required>

                    <label><b>Thành phố</b> <b class="text-danger">*</b></label>
                    <div class="dropdown" style="margin-top: -10px;">
                        <button class="btn btn-secondary dropdown-toggle btn_login text-dark btn-dropdown" type="button"
                            id="dropdowncity" data-bs-toggle="dropdown" aria-expanded="false">
                            TP.HCM
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdowncity">
                            <li><a class="dropdown-item" href="#">TP.HCM</a></li>
                            <li><a class="dropdown-item" href="#">Hà nội</a></li>
                            <li><a class="dropdown-item" href="#">Đà nẵng</a></li>
                            <li><a class="dropdown-item" href="#">Khác</a></li>
                        </ul>
                    </div>
                    <br>
                <button class="btn_login btn_login_company" type="submit">Đăng Ký</button>
                <div class="below_btn_login">

                    <span class="psw span_left">Bằng việc nhấn nút đăng ký bạn đã đồng ý với <a href="#">điều khoản</a></span>
                </div>
            </div>


        </form>
    </div>


</div>
<div class="bg-light" style="height: 800px;"></div>
