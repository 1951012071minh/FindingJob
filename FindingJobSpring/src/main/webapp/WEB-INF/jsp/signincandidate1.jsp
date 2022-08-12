<%-- 
    Document   : signincandidate1
    Created on : Aug 9, 2022, 9:29:25 PM
    Author     : ANHMINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url value ="/signincandidate/info" var ="action"/>


<div id="login_section">
    <div class="row">
        <div class="col-md-6">
            <div class="login_left">
                <div class="login_left-img">
                    <img src="https://blogcdn.muaban.net/wp-content/uploads/2019/09/timvieclamtaihanoi2.jpg" alt="">
                    <div class="login_left-title text-center">
                        <div class="login_left-ing_img" style="margin-bottom: -40px;">
                            <img src="https://res.cloudinary.com/hm-findingjob/image/upload/v1659498605/%E1%BA%A3nh%20c%E1%BB%A7a%20project%20finding%20job/z3613432030895_0d06ac09a1b2703dc88e8b97effdc336-removebg-preview_2_zdain2.png" alt="" style="width: 300px;height: 170px;">
                        </div>
                        <h5>2,000,000</h5>
                        <h4>cơ hội việc làm</h4>
                        <h4>mỗi ngày</h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="login_right">
                <form:form class="modal-content_login animate" action="${action}" method="post" modelAttribute="candidate">
                    <div class="container form_moreinfo">
                        <P class="text-center"><h3 class="text-center">Bổ sung thông tin</h3>
                        <P class="text-center notification">vui lòng bổ sung các thông tin dưới đây để hoàn tất đăng
                            ký tài khoản</P>
                        <label for="psw"><b>Họ và tên</b> <b class="text-danger">*</b></label>
                        <form:input class="input_username" placeholder="Enter name" id="fullname" path = "fullname" required = "required"/> 
                        <label for="sdt"><b>Số điện thoại</b> <b class="text-danger">*</b></label>
                        <input class="input_username" id="phone"
                               placeholder="Ví dụ : 0927575201" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required >
                        
                        <label for="imgFile"><b>Ảnh cá nhân</b> <b class="text-danger">*</b></label>
                        <input class="form-control form-control-sm form-control_inputFile" id="formFileSm"  type="file" required>
                        <br>
                        <label for="birthday"><b>Ngày sinh</b></label>
                        <input class="input_date" type="date" id="birthday" name="birthday">
                       

                        <br>
                        <br>
                        <label ><b>Thành phố</b> <b class="text-danger">*</b></label>
                        <div class="dropdown" style="margin-top: -10px;">
                            <button class="btn btn-secondary dropdown-toggle btn_login text-dark btn-dropdown"
                                    type="button" id="dropdowncity" data-bs-toggle="dropdown" aria-expanded="false">
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
                        <!-- <hr class="hr_signlog"> -->
                        <label ><b>Bằng cấp</b> <b class="text-danger">*</b></label>
                        <div class="dropdown" style="margin-top: -10px;">
                            <button class="btn btn-secondary dropdown-toggle btn_login text-dark btn-dropdown"
                                    type="button" id="dropdowndegree" data-bs-toggle="dropdown" aria-expanded="false">
                                Bằng cấp
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdowndegree">
                                <li><a class="dropdown-item" href="#">Bằng nghề</a></li>
                                <li><a class="dropdown-item" href="#">Cấp 3</a></li>
                                <li><a class="dropdown-item" href="#">Cao đẳng</a></li>
                                <li><a class="dropdown-item" href="#">Đại học</a></li>
                            </ul>
                        </div>
                        <br>
                        <label><b>Lương mong muốn</b> <b class="text-danger">*</b></label>
                        <div class="dropdown" style="margin-top: -10px;">
                            <button class="btn btn-secondary dropdown-toggle btn_login text-dark btn-dropdown"
                                    type="button" id="dropdownSalary" data-bs-toggle="dropdown" aria-expanded="false">
                                Lương mong muốn
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownSalary">
                                <li><a class="dropdown-item" href="#">dưới 5.000.000</a></li>
                                <li><a class="dropdown-item" href="#">5.000.000 - 10.000.000</a></li>
                                <li><a class="dropdown-item" href="#">trên 10.000.000</a></li>

                            </ul>
                        </div>
                        <button class="btn_login" type="submit">xác nhận</button>
                        <!-- <div class="below_btn_login">

                            <span class="psw span_left">Bằng việc nhấn nút đăng ký bạn đã đồng ý với <a
                                    href="#">điều khoản</a></span>
                        </div> -->
                    </div>


                </form:form>
            </div>
        </div>
    </div>
</div>


