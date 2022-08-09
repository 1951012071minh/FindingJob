<%-- 
    Document   : index
    Created on : Aug 1, 2022, 6:00:01 PM
    Author     : ANHMINH
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<div class="main">

    <div class="recruit">
        <div class="row">
            <h2 class="tittle-card">Top nhà tuyển dụng hàng đầu</h2>
            <c:forEach items="${companies}" var="c">
                <div class="col-md-3 col-xs-12">
                <div class="card">
                    <img class="card-img-top"
                         src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBK1lxREE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--6163801645eb4792d6534169042826e45cbf6b51/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RW5KbGMybDZaVjkwYjE5bWFYUmJCMmtCcWpBPSIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--623b1a923c4c6ecbacda77c459f93960558db010/mgm-technology-partners-vietnam-logo.png"
                         alt="Card image">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align: center">${c.name}</h5>
                        <p class="card-text text-danger" style="text-align: center">4 viec lam <span class="text-dark">- ${c.city}</span></p>

                    </div>
                </div>
            </div>
            </c:forEach>
            

            <!--        <div class="col-md-3 col-xs-12">
                      <div class="card">
                        <img class="card-img-top"
                          src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBK1lxREE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--6163801645eb4792d6534169042826e45cbf6b51/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RW5KbGMybDZaVjkwYjE5bWFYUmJCMmtCcWpBPSIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--623b1a923c4c6ecbacda77c459f93960558db010/mgm-technology-partners-vietnam-logo.png"
                          alt="Card image">
                        <div class="card-body">
                          <h5 class="card-title" style="text-align: center">mgm technology partners Vietnam</h5>
                          <p class="card-text text-danger" style="text-align: center">4 viec lam <span class="text-dark">- HO CHI
                              MINH</span></p>
            
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3 col-xs-12">
                      <div class="card">
                        <img class="card-img-top"
                          src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBK2VMSlE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--9a151e661e692ff9b3fb88cb77fef5c9aeb3221b/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RW5KbGMybDZaVjkwYjE5bWFYUmJCMmtCcWpBPSIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--623b1a923c4c6ecbacda77c459f93960558db010/CodeHQ%20logo%20for%20itviec.png"
                          alt="Card image">
                        <div class="card-body">
                          <h5 class="card-title" style="text-align: center">Samsung Electronics HCMC CE Complex</h5>
                          <p class="card-text text-danger" style="text-align: center">4 viec lam <span class="text-dark">- HO CHI
                              MINH</span></p>
            
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3 col-xs-12">
                      <div class="card">
                        <img class="card-img-top"
                          src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBN1RFRWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--fd973422c6f688d8007a832ba2ed146a33b8dc15/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RW5KbGMybDZaVjkwYjE5bWFYUmJCMmtCcWpBPSIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--623b1a923c4c6ecbacda77c459f93960558db010/Logo%20xanh%20d%C6%B0%C6%A1ng.png"
                          alt="Card image">
                        <div class="card-body">
                          <h5 class="card-title" style="text-align: center">Samsung Electronics HCMC CE Complex</h5>
                          <p class="card-text text-danger" style="text-align: center">4 viec lam <span class="text-dark">- HO CHI
                              MINH</span></p>
            
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3 col-xs-12">
                      <div class="card">
                        <img class="card-img-top"
                          src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBN1RFRWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--fd973422c6f688d8007a832ba2ed146a33b8dc15/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RW5KbGMybDZaVjkwYjE5bWFYUmJCMmtCcWpBPSIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--623b1a923c4c6ecbacda77c459f93960558db010/Logo%20xanh%20d%C6%B0%C6%A1ng.png"
                          alt="Card image">
                        <div class="card-body">
                          <h5 class="card-title" style="text-align: center">Samsung Electronics HCMC CE Complex</h5>
                          <p class="card-text text-danger" style="text-align: center">4 viec lam <span class="text-dark">- HO CHI
                              MINH</span></p>
            
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3 col-xs-12">
                      <div class="card">
                        <img class="card-img-top"
                          src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBN1RFRWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--fd973422c6f688d8007a832ba2ed146a33b8dc15/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RW5KbGMybDZaVjkwYjE5bWFYUmJCMmtCcWpBPSIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--623b1a923c4c6ecbacda77c459f93960558db010/Logo%20xanh%20d%C6%B0%C6%A1ng.png"
                          alt="Card image">
                        <div class="card-body">
                          <h5 class="card-title" style="text-align: center">Samsung Electronics HCMC CE Complex</h5>
                          <p class="card-text text-danger" style="text-align: center">4 viec lam <span class="text-dark">- HO CHI
                              MINH</span></p>
            
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3 col-xs-12">
                      <div class="card">
                        <img class="card-img-top"
                          src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBN1RFRWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--fd973422c6f688d8007a832ba2ed146a33b8dc15/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RW5KbGMybDZaVjkwYjE5bWFYUmJCMmtCcWpBPSIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--623b1a923c4c6ecbacda77c459f93960558db010/Logo%20xanh%20d%C6%B0%C6%A1ng.png"
                          alt="Card image">
                        <div class="card-body">
                          <h5 class="card-title" style="text-align: center">Samsung Electronics HCMC CE Complex</h5>
                          <p class="card-text text-danger" style="text-align: center">4 viec lam <span class="text-dark">- HO CHI
                              MINH</span></p>
            
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3 col-xs-12">
                      <div class="card">
                        <img class="card-img-top"
                          src="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBN1RFRWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--fd973422c6f688d8007a832ba2ed146a33b8dc15/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RW5KbGMybDZaVjkwYjE5bWFYUmJCMmtCcWpBPSIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--623b1a923c4c6ecbacda77c459f93960558db010/Logo%20xanh%20d%C6%B0%C6%A1ng.png"
                          alt="Card image">
                        <div class="card-body">
                          <h5 class="card-title" style="text-align: center">Samsung Electronics HCMC CE Complex</h5>
                          <p class="card-text text-danger" style="text-align: center">4 viec lam <span class="text-dark">- HO CHI
                              MINH</span></p>
            
                        </div>
                      </div>
                    </div>-->
        </div>

    </div>
    <!--    <div id="id01" class="modal">
    
          <form class="modal-content animate" action="/action_page.php" method="post">
            <div class="imgcontainer">
              <h3>Login</h3>
            </div>
            <hr style="margin-bottom: 30px;margin-top: -5px; color: rgb(44, 149, 255); height: 2px;">
            <div class="container">
              <label for="uname"><b>Username</b> <b class="text-danger">*</b></label>
              <input type="text" class="input_username" placeholder="Enter Username" name="uname" required>
      
              <label for="psw"><b>Password</b> <b class="text-danger">*</b></label>
              <input type="password" class="input_password" placeholder="Enter Password" name="psw" required>
              <span class="psw check_Account"><a href="#">Quên mật khẩu?</a></span>
              <button class="btn_login" type="submit">Login</button>
              <div class="below_btn_login">
      
                <span class="psw span_left">Bạn có tài khoản chưa?<a href="#"> đăng ký ngay</a></span>
              </div>
            </div>
      
      
          </form>
        </div>-->
    <div class="blog">

        <div class="row">
            <h2>Bài viết mới</h2>
            <div class="col-md-6">
                <div class="first-blog">

                    <div class="row">
                        <div class="col-md-6">
                            <a href="#" class="blog__image-link text-center">
                                <img class="img-titlt-blog"
                                     src="https://itviec.com/rails/active_storage/blobs/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBNlJXS1E9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--5863aa279de2a84ad7a1ec853ff1a7ed28ce9b79/tu-ao-lang-den-out-trinh-thumbnail.jpg"
                                     alt="">
                            </a>
                        </div>
                        <div class="col-md-6">
                            <div class="blog_description">
                                <div>
                                    <h5 class="blog_description-title">
                                        <a href="" class="text-dark">“TỪ AO LÀNG ĐẾN OUT TRÌNH” – Lần đầu tiên chuyên gia IT giãi bày bằng
                                            con chữ</a>
                                        </h4>
                                </div>
                            </div>
                            <div class="blog_description-content">

                                Nhân kỷ niệm 9 năm ngày thành lập, ITviec tổ chức cuộc thi viết “Từ Ao làng đến Out trình” nhằm m...
                            </div>
                            <div class="blog_read-more">
                                <a href="#" class="text-primary">read more</a>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
            <div class="col-md-6">
                <div class="first-blog">

                    <div class="row">
                        <div class="col-md-6">
                            <a href="#" class="blog__image-link text-center">
                                <img class="img-titlt-blog"
                                     src="https://itviec.com/rails/active_storage/blobs/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBNlJXS1E9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--5863aa279de2a84ad7a1ec853ff1a7ed28ce9b79/tu-ao-lang-den-out-trinh-thumbnail.jpg"
                                     alt="">
                            </a>
                        </div>
                        <div class="col-md-6">
                            <div class="blog_description">
                                <div>
                                    <h5 class="blog_description-title">
                                        <a href="" class="text-dark">“TỪ AO LÀNG ĐẾN OUT TRÌNH” – Lần đầu tiên chuyên gia IT giãi bày bằng
                                            con chữ</a>
                                        </h4>
                                </div>
                            </div>
                            <div class="blog_description-content">

                                Nhân kỷ niệm 9 năm ngày thành lập, ITviec tổ chức cuộc thi viết “Từ Ao làng đến Out trình” nhằm m...
                            </div>
                            <div class="blog_read-more">
                                <a href="#" class="text-primary">read more</a>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
</div>
