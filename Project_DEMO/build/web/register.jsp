<%-- 
    Document   : register
    Created on : Jun 19, 2022, 8:26:51 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tạo tài khoản- Taku Shop</title>
        <link rel="stylesheet" href="css/home.css"/>
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="topbar">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 slogan">Keep calm and love light novel</div>
                    <div class="col-md-4 account">
                        <a href="/project/register" class="link" title="register">
                            <strong>Đăng ký</strong>
                        </a>
                        <span class="sep">|</span>
                        <a href="/project/login" class="link" title="login">
                            <strong>Đăng nhập</strong>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <header class="header"> 
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <a href="/project/home" class="logo" title="taku shop">
                            <img style="width: 70px; height:70px " src="images/logo.jpg" alt="Taku shop" title="Taku shop">
                        </a>
                    </div>
                    <div class="col-md-6">
                        <form class="searchbox "action="search" method="get">
                            <input class="search-text" type="text" name="key" placeholder="Tìm kiếm..."/>
                            <button class="search-btn" onclick="this.form.submit()"><img src="images/search.png" width="25px" height="25px" alt="search"/></button>
                        </form>
                        <c:set var="k" value="${requestScope.key}"/>
                    </div>
                    <div class="col-md-3">
                        <a href="/project/cart" class="cart text-center">
                            <img src="images/cart.png" width="50px" height="50px" alt="cart"/><br/>
                            <strong>Giỏ hàng (${sessionScope.size})</strong>
                        </a>
                    </div>
                </div>
            </div>
        </header>
        <nav>
            <div class="container">
                <div class="menu">
                    <li>
                        <a href="home.html">
                            <span>Trang chủ</span>
                        </a>
                    </li>
                    <li>
                        <a href="/collections/all">
                            <span>Sản phẩm</span>
                        </a>
                        <ul class="sub-menu">
                            <c:set var="cid" value="${requestScope.id}"/>
                            <c:forEach items="${requestScope.tab}" var="c">
                                <li><a class="${c.id==id?"active":""}" href="collection?id=${c.id}">${c.name}</a></li>
                                </c:forEach>
                        </ul>
                    </li>
                    <li>
                        <a href="/blogs/tintuc">
                            Tin tức
                        </a>
                    </li>
                    <li>
                        <a href="/blogs/huong-dan">
                            <span>Thanh toán</span>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="/pages/dat-hang">Đặt hàng</a>
                            </li>
                            <li>
                                <a href="/pages/thanh-toan">Thanh toán</a>
                            </li>
                            <li>
                                <a href="/pages/phuong-thuc-van-chuyen">Phương thức vận chuyển</a>
                            </li>
                            <li>
                                <a href="/pages/chinh-sach-doi-tra">Chính sách đổi trả</a>
                            </li>                    
                        </ul>
                    </li>
                    <li>
                        <a href="/pages/lien-he">Liên hệ</a>
                    </li>                
                </div>
            </div>
        </nav>
        <div class="login-div">
            <div class="container">
                <div class="text-login text-center">
                    <span class="text-uppercase" style="font-weight: 600">Đăng ký</span>
                </div>
                <div class="login-box">
                    <%
                      if(request.getAttribute("error")!=null){
                        String er= (String)request.getAttribute("error");
                    %>
                    <h5 style="color: red; font-weight: 600"><%= er %></h5>
                    <%
                        }  
                    %>
                    <form action="register" class="login-form text-left" method="post">
                        <div>
                            <input required type="text" name="lname" placeholder="Họ"/>
                        </div>
                        <div>
                            <input required type="text" name="fname" placeholder="Tên"/>
                        </div>
                        <div>
                            <input required type="text" name="phone" placeholder="Phone"/>
                        </div>
                        <div>
                            <input required type="email" name="email" placeholder="Email"/>
                        </div>
                        <div>
                            <input required type="password" name="password" placeholder="Mật khẩu" size="16"/>
                        </div>
                        <div>
                            <input class="btn" type="submit" value="Đăng ký"/>
                        </div>
                        <div class="login-action">
                            <a href="login" onclick="">Quay về</a>                        
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 shop">
                        <a href="home.html" class="logo" title="taku shop">
                            <img style="width: 70px; height:70px " src="images/logo.jpg" alt="taku shop" title="taku shop">
                        </a><br/>
                        <p>Taku Shop</p>            
                    </div>
                    <div class="col-md-3">
                        <p>LIÊN HỆ</p>
                        <p><h5>Địa chỉ: An Khánh, Hoài Đức, Hà Nội</h5></p>
                        <p><h5>ĐT: 0397461220</h5></p>
                        <p><h5>Gmail: gamer.otaku.1710@gmail.com</h5></p>
                        <p>ĐĂNG KÝ NHẬN TIN</p>
                        <form action="send" method="get">
                            <input type="text" name="input" placeholder="Vui lòng nhập địa chỉ email..."/>
                            <button class="btn" type="submit">
                                <span>Gửi</span>
                            </button>
                        </form>
                    </div>
                    <div class="col-md-3">
                        <p>THÔNG TIN HỖ TRỢ</p>
                        <li><a href="">Yêu cầu hỗ trợ</a></li>
                        <li><a href="">Điều khoản sử dụng</a></li>
                        <li><a href="">Chính sách bảo mật</a></li>
                        <li><a href="">Phương thức vận chuyển</a></li>
                    </div>
                    <div class="col-md-3">
                        <p>FANPAGE</p>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>
