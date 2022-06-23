<html>
<head>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <meta http-equiv="Content-Language" content="ko" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <meta http-equiv="Content-Script-Type" content="text/javascript" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta name="referrer" content="always" />
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1" />
    <meta name="csrf-token" id="csrf" content="vzLIl4bM8xOxDpDZoHQQ3QCO2h7OfHbMU9ZALXPR">
    <meta name="format-detection" content="address=no, email=no" />
    <meta name="theme-color" content="#000000" />
    <meta name="author" contents="메이크언에퍼트" />
    <meta name="publisher" content="메이크언에퍼트" />
    <meta name="reply-to(email)" content="enoch_choi@naver.com" />
    <meta name="title" content=" 제로월드 강남점 : 예약하기 " />
    <meta name="description" content=" 예약에 오신걸 환영합니다. " />
    <meta name="keywords" content="제로월드, 방탈출" />
    <meta property="og:locale" content="ko_KR" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://www.zerogangnam.com/reservation" />
    <meta property="og:site_name" content="제로월드 강남점" />
    <meta property="og:title" content=" 제로월드 강남점 : 예약하기 " />
    <meta property="og:description" content=" 예약에 오신걸 환영합니다. " />
    <meta property="og:image" content="https://www.zerogangnam.com/images/front/symbol.jpg" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:title" content=" 제로월드 강남점 : 예약하기 " />
    <meta name="twitter:image" content="https://www.zerogangnam.com/images/front/symbol.jpg" />
    <meta name="twitter:domain" content="https://www.zerogangnam.com/reservation" />
    <meta name="twitter:description" content=" 예약에 오신걸 환영합니다. " />
    <link rel="canonical" href="https://www.zerogangnam.com/reservation" />
    <link rel="shortcut icon" href="https://www.zerogangnam.com/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="https://www.zerogangnam.com/css/front/layout.css">
    <title> 제로월드 강남점 : 예약하기 </title>
        <link rel="stylesheet" href="https://www.zerogangnam.com/css/front/reservation.css">
</head>
<body>
    <header class="header" id="header">
        <div class="container active1 clear-b">
            <a class="header-logo" href="https://www.zerogangnam.com"><img src="https://www.zerogangnam.com/storage/dNjJm2761Pms8A4oCBmmrZXMI0ezkH7EohlKyJoV.png" alt="제로월드"></a>
            <button class="header-btn" id="eveLayerToggleBtn" type="button"><em></em></button>
        </div>
    </header>
    <nav class="nav bs-bb" id="nav">
        <div class="container active1 clear-b">
            <ul class="nav-list clear-b">
                <li><a href="https://www.zerogangnam.com/about">제로월드</a></li>
                <li><a href="https://www.zerogangnam.com/theme">테마</a></li>
                <li><a href="https://www.zerogangnam.com/reservation">예약</a></li>
                <li><a href="https://www.zerogangnam.com/map">오시는길</a></li>
            </ul>
            <div class="nav-social">
                <a class="hover1" target="_blank" href="https://www.instagram.com/zeroworld_kr/">instagram</a>
            </div>
        </div>
    </nav>
    <article class="wrap" id="wrap">
        


    <div class="title2">
        <div class="container p-r">
            <h1>강남점 <br class="lg-none" />RESERVATION</h1>
            <p>
                <strong class="active1">경험해보고 싶었던 “새로운 세상”</strong>
                사실감 넘치는 인테리어와 신기하고 신선한 문제와 트릭 장치 그리고 전문작가의 흥미진진한 스토리까지!
            </p>
            <div class="title2-btns active3 clear-b">
                <label class="title2-select1 active2 el-select hover1">
                    <select class="bs-bb" onChange="this.value && window.open(this.value)">
                        <option value="">다른지점 바로가기</option>
                         <option value="https://zeroesc.com/reservation">김포본점</option>                         <option value="https://zerolotteworld.com/reservation">롯데월드점</option>
                    </select>
                </label>
                <a class="active3 hover1" href="https://www.zerogangnam.com/reservation/confirm">예약확인&취소</a>
            </div>
            
        </div>
    </div>



    <div class="container reservation">
        <form class="swiper-container swiper o-v" data-swiper-name="reservation" method="POST" action="https://www.zerogangnam.com/reservation" id="reservationForm" data-pick="">
            <div class="swiper-wrapper">
                <div class="swiper-slide bs-bb resstep">
                    <div class="swiper-container swiper o-v" data-swiper-name="table">
    <div class="swiper-wrapper">
        <div class="swiper-slide step1-item bs-bb step1-calendar">
            <strong>날짜</strong>
            <div class="bs-bb">
                <div id="calendar"></div>
            </div>
        </div>
        <div class="swiper-slide step1-item bs-bb ste1-theme">
            <strong>테마</strong>
            <div class="bs-bb resscrolldesign" id="themeChoice">
                
            </div>
        </div>
        <div class="swiper-slide step1-item bs-bb step1-time active">
            <strong>시간</strong>
            <div class="bs-bb resscrolldesign clear-b" id="themeTimeWrap">
                
            </div>
        </div>
        <div class="swiper-slide step1-item bs-bb step1-detail">
            <strong>포스터</strong>
            <div class="bs-bb clear-b resscrolldesign" id="themeDetailWrap">
                <div>
                    
                </div>
            </div>
        </div>
    </div>
</div>


<div class="step1-info">
    <ul class="d-f fw-w">
        <li>
            <div class="step1-info-box clear-b">
                <img src="https://www.zerogangnam.com/images/front/reservation/icon41.png">
                <strong>지점명</strong>
                <p class="active1">강남점</p>
            </div>
        </li>
        <li>
            <div class="step1-info-box clear-b">
                <img src="https://www.zerogangnam.com/images/front/reservation/icon42.png">
                <strong>주소</strong>
                <p>서울특별시 서초구 서초대로73길 40.(서초동, 강남오피스텔)</p>
            </div>
        </li>
        <li>
            <div class="step1-info-box clear-b">
                <img src="https://www.zerogangnam.com/images/front/reservation/icon43.png">
                <strong>연락처</strong>
                <p><a href="tel:02-599-1661">02-599-1661</a></p>
            </div>
        </li>
    </ul>
</div>


<div class="ta-c">
    <button class="step-btn1 hover1" type="button" id="nextBtn">NEXT</button>
</div>


<input type="hidden" name="reservationDate" value="2022-06-22" id="dataReservationDate">
                </div>
                <div class="swiper-slide bs-bb resstep">
                    <table class="step2-table">
    <tr>
        <th>예약일</th>
        <td>
            <p class="el-text" id="step2DateWrap">-</p>
        </td>
    </tr>
    <tr>
        <th>테마명</th>
        <td>
            <p class="el-text" id="step2TitleWrap">-</p>
        </td>
    </tr>
    <tr>
        <th>성함</th>
        <td><input class="el-input bs-bb" type="text" name="name" maxlength="10"></td>
    </tr>
    <tr>
        <th>연락처</th>
        <td><input class="el-input bs-bb mask-phone" type="text" name="phone" maxlength="13" placeholder="숫자만 입력해주세요."></td>
    </tr>
    <tr>
        <th>인원</th>
        <td>
            <label class="el-select">
                <select class="bs-bb" name="people" id="step2PeopleWrap">
                    
                </select>
            </label>
        </td>
    </tr>
    <tr>
        <th>비용</th>
        <td>
            <p class="el-text" id="step2PriceWrap">-</p>
        </td>
    </tr>
    <tr>
        <th>결제방식</th>
        <td>
                                    <label class="el-rc bs-bb"><input type="radio" name="paymentType" value="1" checked><i></i>현장결제</label>
                                            </td>
    </tr>
    <tr class="active">
        <th class="va-t">주의사항</th>
        <td class="va-t">
            <ul>
                <li class="bs-bb">
                    예약해 주신 시간은 입장시간입니다.<br />
                    브리핑 및 짐 보관을 위해 15분전에 도착해주셔야합니다.<br />
                    늦으실 경우 늦은 시간만큼 시간이 차감됩니다.
                </li>
                <li class="bs-bb">
                    장치를 힘으로 억지로 열거나 작동시키려 할 경우 부상과 파손의 위험이 있습니다.<br />
                    소품 및 장치 파손 시 배상의 책임이 있습니다.<br />
                    테마 진행 및 이동시에는 장난을 치거나 뛰지 않도록 주의해 주세요.
                </li>
            </ul>
        </td>
    </tr>
</table>


<div class="step2-policy ta-c">
    <label class=" el-rc fw7"><input type="checkbox" name="policy"><i></i><span>개인정보 처리방침 및 주의사항에 동의합니다.</span></label>
</div>

<div class="ta-c">
    <button class="step-btn1 hover1" type="button" id="reservationBtn">예약하기</button>
</div>
                </div>
            </div>
        </form>
    </div>


    <div class="reservationpop" id="reservationpop">
        <div class="reservationpop-box">
            
            <div>
                <img src="https://www.zerogangnam.com/images/front/logo.png">
                제로월드에 오신걸 환영합니다.<br />
                예약이 확정되셨습니다.
            </div>
            <a href="https://www.zerogangnam.com/reservation/confirm">확인</a>
        </div>
    </div>


    <div id="reservationHiddenData" class="d-n">{"after":{"13":1653627000,"14":1653703800},"today":[],"other":{"43":{"1654564500":true},"23":{"1654570200":true},"41":{"1654579200":true},"29":{"1654585800":true},"37":{"1654590900":true},"27":{"1654825200":true},"45":{"1654829700":true},"31":{"1654842600":true},"25":{"1654846200":true,"1654851600":true}}}</div>
    </article>
    <footer class="footer" id="footer">
        <div class="container">
            <ul class="d-f fw-w">
                <li>
                    <dl class="footer-info">
                        <dt>제로월드</dt>
                                                <dd>상호 : (주)제로월드</dd>
                                                                        <dd>이메일 : zeroesc@naver.com</dd>
                                                                        <dd>사업자등록번호 : 530-86-01576</dd>
                                                                        <dd>주소 : 서울특별시 서초구 서초대로73길 40.(서초동, 강남오피스텔)</dd>
                                            </dl>
                </li>
                <li>
                    <dl class="footer-info">
                        <dt>고객센터</dt>
                        <dd>전화(강남점) : <br class="lg-none" />02-599-1661</dd>
                    </dl>
                </li>
                <li class="footer-link">
                    <strong>ZERO WORLD</strong><br />
                    <a href="https://www.zerogangnam.com/policy">개인정보처리방침</a>
                </li>
            </ul>
        </div>
        <div class="footer-copyright">
            <div class="container">
                COPYRIGHT 2020. ZEROWORLD ALL RIGHTS RESERVED.
            </div>
        </div>
    </footer>
    <script src="https://www.zerogangnam.com/js/front/layout.js"></script>
        <script src="https://www.zerogangnam.com/js/front/reservation.js"></script>
</body>
</html>