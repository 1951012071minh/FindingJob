<%-- 
    Document   : signincandidate
    Created on : Jul 31, 2022, 11:23:46 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="login_section">
    <div class="row">
        <div class="col-md-6">
            <div class="login_left">
                <div class="login_left-img">
                    <img  src="https://blogcdn.muaban.net/wp-content/uploads/2019/09/timvieclamtaihanoi2.jpg" alt="" >
                    <div class="login_left-title text-center">
                        <h5>2,000,000</h5>
                        <h4>cơ hội việc làm</h4>
                        <h4>mỗi ngày</h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="login_right">
                <form class="modal-content_login animate" action="/action_page.php" method="post">
                    <div class="imgcontainer">
                        <p>Chào mừng bạn đến với H&M VIEC</p>
                        <h3>Sign in for candidate</h3>
                    </div>
                    <hr class="hr_signlog">
                    <div class="container">
                        <P><b>THÔNG TIN TÀI KHOẢN</b></P>
                        <label for="uname"><b>Username</b> <b class="text-danger">*</b></label>
                        <input type="email" class="input_username" placeholder="Enter Username" id="username" path="username" required>
                        <label for="psw"><b>Họ và tên</b> <b class="text-danger">*</b></label>
                        <input type="text" class="input_text" placeholder="Enter name" id="fullname" path="fullname" required>
                        <label for="psw"><b>Password</b> <b class="text-danger">*</b></label>
                        <input type="password" class="input_password" placeholder="Enter Password" id="password" path="password" required>
                        <label for="psw"><b>Nhập lại password</b> <b class="text-danger">*</b></label>
                        <input type="password" class="input_password" placeholder="Enter Password" id="repassword" path="repassword" required>
                        <label for="imgFile"><b>Ảnh cá nhân</b> <b class="text-danger">*</b></label>
                        <input class="form-control form-control-sm form-control_inputFile" id="formFileSm" type="file">

                        <button class="btn_login"  type="submit">Đăng Ký</button>
                        <div class="below_btn_login">

                            <span class="psw span_left" >Bằng việc nhấn nút đăng ký bạn đã đồng ý với <a href="#">điều khoản</a></span>
                        </div>
                    </div>


                </form>
            </div>
        </div>
    </div>
</div>
