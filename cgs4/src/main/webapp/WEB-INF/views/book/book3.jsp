<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String ctx = request.getContextPath();
%>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>AMovie - Booking step 3</title>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <!-- Fonts -->
        <!-- Font awesome - icon font -->
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
        <!-- Roboto -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
    
    <!-- Stylesheets -->

        <!-- Mobile menu -->
        <link href="<%=ctx%>/resources/css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="<%=ctx%>/resources/css/external/jquery.selectbox.css" rel="stylesheet" />
    
        <!-- Custom -->
        <link href="<%=ctx%>/resources/css/style.css?v=1" rel="stylesheet" />

        <!-- Modernizr --> 
        <script src="<%=ctx%>/resources/js/external/modernizr.custom.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
    <!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
</head>

<body>
    <div class="wrapper">

        <!-- Header section -->
        <jsp:include page="../menu.jsp" flush="false"/>
        
        <!-- Main content -->
        <section class="container">
            <div class="order-container">
                <div class="order">
                    <img class="order__images" alt='' src="<%=ctx%>/resources/images/tickets.png">
                    <p class="order__title">Book a ticket <br><span class="order__descript">and have fun movie time</span></p>
<!--                     <div class="order__control"> -->
<!--                         <a href="" class="order__control-btn active">Purchase</a> -->
<!--                         <a href="book3-reserve.html" class="order__control-btn">Reserve</a> -->
<!--                     </div> -->
                </div>
            </div>
                <div class="order-step-area">
<!--                     <div class="order-step first--step order-step--disable ">1. What &amp; Where &amp; When</div> -->
<!--                     <div class="order-step second--step order-step--disable">2. Choose a sit</div> -->
                    <div class="order-step third--step">예매 확인</div>
                </div>
	<form action="book4">
            <div class="col-sm-12">
                <div class="checkout-wrapper">
                    <h2 class="page-heading">예매 정보</h2>
                    <ul class="book-result">
                        <li class="book-result__item">선택하신 영화: <span class="book-result__count">${cInfo.film_name}</span></li>
                        <li class="book-result__item">상영 일자: <span class="book-result__count"> ${cInfo.screening_date}</span></li>
                        <li class="book-result__item">영화관: <span class="book-result__count"> ${cInfo.site_name}</span></li>
                        <li class="book-result__item">상영관: <span class="book-result__count"> ${cInfo.screen_num}관</span></li>
                        <li class="book-result__item">영화 시작시간: <span class="book-result__count">${cInfo.start_time}</span></li>
                        <li class="book-result__item">예매 인원: <span class="book-result__count">${cInfo.sale_cnt}명</span></li>
                        <li class="book-result__item">구매 금액: <span class="book-result__count booking-cost">${cInfo.sale_price}원</span></li>
                    </ul>

                    <h2 class="page-heading">결제 정보 입력</h2>
                    <div class="payment">
                    <table>
                    	<tr style="height:35px">
                    	<td style="width:120px">카드 종류</td>
                    	<td><select name="select_card" id="select-sort"
						class="select_card" tabindex="0" required>
						<option value="01" selected='selected'>삼성카드</option>
						<option value="02">BC카드</option>
						<option value="03">신한카드</option>
						<option value="04">현대카드</option>
						<option value="05">NH카드</option>
						<option value="06">하나카드</option>
						<option value="07">롯데카드</option>
					</select>
                    	</td>
                    	</tr>
                    	<tr style="height:35px">
                    	<td>카드 번호</td>
                    	<td><input type="text" name="card1" class="card" maxlength="4" required>-
                    	<input type="password" name="card2" class="card" maxlength="4" required autocomplete="off">-
                    	<input type="password" name="card3" class="card" maxlength="4" required autocomplete="off">-
                    	<input type="text" name="card4" class="card" maxlength="4" required></td>
                    	</tr>
                    	<tr style="height:35px">
                    	<td>유효기간</td>
                    	<td><input type="text" name="valid_month" class="valid_date" maxlength="2" max="12" required>월 
                    	<input type="text" name="valid_year" class="valid_date" maxlength="2" required>년</td>
                    	</tr>
                    	<tr style="height:35px">
                    	<td>비밀번호</td>
                    	<td><input type="password" name="card_password" class="valid_date" maxlength="2" required> **</td>
                    	</tr>
                    	<tr style="height:35px">
                    	<td>생년월일</td>
                    	<td><input type="text" name="birth_date" class="birth_date" maxlength="6" required> 생년월일 6자리</td>
                    	</tr>
                    </table>
<!--                         <a href="#" class="payment__item"> -->
<%--                             <img alt='' src="<%=ctx%>/resources/images/payment/pay1.png"> --%>
<!--                         </a> -->
<!--                         <a href="#" class="payment__item"> -->
<%--                             <img alt='' src="<%=ctx%>/resources/images/payment/pay2.png"> --%>
<!--                         </a> -->
<!--                         <a href="#" class="payment__item"> -->
<%--                             <img alt='' src="<%=ctx%>/resources/images/payment/pay3.png"> --%>
<!--                         </a> -->
<!--                         <a href="#" class="payment__item"> -->
<%--                             <img alt='' src="<%=ctx%>/resources/images/payment/pay4.png"> --%>
<!--                         </a> -->
<!--                         <a href="#" class="payment__item"> -->
<%--                             <img alt='' src="<%=ctx%>/resources/images/payment/pay5.png"> --%>
<!--                         </a> -->
<!--                         <a href="#" class="payment__item"> -->
<%--                             <img alt='' src="<%=ctx%>/resources/images/payment/pay6.png"> --%>
<!--                         </a> -->
<!--                         <a href="#" class="payment__item"> -->
<%--                             <img alt='' src="<%=ctx%>/resources/images/payment/pay7.png"> --%>
<!--                         </a> -->
                    </div>
                </div>
                
                <div class="order">
                    <a href="#" class="btn btn-md btn--warning btn--wide" onclick="submit()">구매하기</a>
                </div>

            </div>
            </form>

        </section>
        

        <div class="clearfix"></div>

        <div class="booking-pagination">
                <a href="book2.html" class="booking-pagination__prev">
                    <p class="arrow__text arrow--prev">prev step</p>
                    <span class="arrow__info">choose a sit</span>
                </a>
                <a href="#" class="booking-pagination__next hide--arrow">
                    <p class="arrow__text arrow--next">next step</p>
                    <span class="arrow__info"></span>
                </a>
        </div>
        
        <div class="clearfix"></div>

        <footer class="footer-wrapper">
            <section class="container">
                <div class="col-xs-4 col-md-2 footer-nav">
                    <ul class="nav-link">
                        <li><a href="#" class="nav-link__item">Cities</a></li>
                        <li><a href="movie-list-left.html" class="nav-link__item">Movies</a></li>
                        <li><a href="trailer.html" class="nav-link__item">Trailers</a></li>
                        <li><a href="rates-left.html" class="nav-link__item">Rates</a></li>
                    </ul>
                </div>
                <div class="col-xs-4 col-md-2 footer-nav">
                    <ul class="nav-link">
                        <li><a href="coming-soon.html" class="nav-link__item">Coming soon</a></li>
                        <li><a href="cinema-list.html" class="nav-link__item">Cinemas</a></li>
                        <li><a href="offers.html" class="nav-link__item">Best offers</a></li>
                        <li><a href="news-left.html" class="nav-link__item">News</a></li>
                    </ul>
                </div>
                <div class="col-xs-4 col-md-2 footer-nav">
                    <ul class="nav-link">
                        <li><a href="#" class="nav-link__item">Terms of use</a></li>
                        <li><a href="gallery-four.html" class="nav-link__item">Gallery</a></li>
                        <li><a href="contact.html" class="nav-link__item">Contacts</a></li>
                        <li><a href="page-elements.html" class="nav-link__item">Shortcodes</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-md-6">
                    <div class="footer-info">
                        <p class="heading-special--small">A.Movie<br><span class="title-edition">in the social media</span></p>

                        <div class="social">
                            <a href='#' class="social__variant fa fa-facebook"></a>
                            <a href='#' class="social__variant fa fa-twitter"></a>
                            <a href='#' class="social__variant fa fa-vk"></a>
                            <a href='#' class="social__variant fa fa-instagram"></a>
                            <a href='#' class="social__variant fa fa-tumblr"></a>
                            <a href='#' class="social__variant fa fa-pinterest"></a>
                        </div>
                        
                        <div class="clearfix"></div>
                        <p class="copy">&copy; A.Movie, 2013. All rights reserved. Done by Olia Gozha</p>
                    </div>
                </div>
            </section>
        </footer>
    </div>

    <!-- open/close -->
        <div class="overlay overlay-hugeinc">
            
            <section class="container">

                <div class="col-sm-4 col-sm-offset-4">
                    <button type="button" class="overlay-close">Close</button>
                    <form id="login-form" class="login" method='get' novalidate=''>
                        <p class="login__title">sign in <br><span class="login-edition">welcome to A.Movie</span></p>

                        <div class="social social--colored">
                                <a href='#' class="social__variant fa fa-facebook"></a>
                                <a href='#' class="social__variant fa fa-twitter"></a>
                                <a href='#' class="social__variant fa fa-tumblr"></a>
                        </div>

                        <p class="login__tracker">or</p>
                        
                        <div class="field-wrap">
                        <input type='email' placeholder='Email' name='user-email' class="login__input">
                        <input type='password' placeholder='Password' name='user-password' class="login__input">

                        <input type='checkbox' id='#informed' class='login__check styled'>
                        <label for='#informed' class='login__check-info'>remember me</label>
                         </div>
                        
                        <div class="login__control">
                            <button type='submit' class="btn btn-md btn--warning btn--wider">sign in</button>
                            <a href="#" class="login__tracker form__tracker">Forgot password?</a>
                        </div>
                    </form>
                </div>

            </section>
        </div>

	<!-- JavaScript-->
        <!-- jQuery 1.9.1--> 
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        <script src="<%=ctx%>/resources/js/external/jquery-migrate-1.2.1.min.js"></script>
        <!-- Bootstrap 3--> 
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="<%=ctx%>/resources/js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="<%=ctx%>/resources/js/external/jquery.selectbox-0.2.min.js"></script>

        <!-- Form element -->
        <script src="<%=ctx%>/resources/js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="<%=ctx%>/resources/js/form.js"></script>

        <!-- Custom -->
        <script src="<%=ctx%>/resources/js/custom.js"></script>

</body>
</html>
