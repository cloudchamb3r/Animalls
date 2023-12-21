<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//어느 페이지에 포함되었는지 정보를 얻어오기
	String currentPage=request.getParameter("current");
%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<link href="/Animalls/css/footer.css" rel="stylesheet">
  <footer class="footer bg-dark text-white p-4">
      <div class="container">
	      <div class="row">
	      	<div class="col-sm-8">
          	<p class="">주식회사 일현코퍼레이션</p>
              <p class="">
              	04799 서울특별시 성동구 아차산로15길 52 (성수동2가) 삼환디지털벤처타워 902-1호<br>
                  이메일 : <a class="text-decoration-none"  href="">doctordog@ilhyun.co.kr</a><br>
                  사업자번호 : 206-86-61496<span></span>통신판매신고번호 : 제 2012-서울성동-0364<br>
                  호스팅제공자 : 카페24<span></span>KG 이니시스 매매보호(에스크로)서비스 가입<br>
                  대표이사 : 김형우<span></span>개인정보관리자 : <a class="text-decoration-none"  href="">양준수</a>
              </p>
              <div class="sns_area">
              	<a href="https://ko-kr.facebook.com/" target="_blank" style="text-decoration:none;">
              		<svg xmlns="http://www.w3.org/2000/svg" height="34" width="34" viewBox="0 0 448 512">
              		<path fill="#ffffff" d="M64 32C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64h98.2V334.2H109.4V256h52.8V222.3c0-87.1 39.4-127.5 125-127.5c16.2 0 44.2 3.2 55.7 6.4V172c-6-.6-16.5-1-29.6-1c-42 0-58.2 15.9-58.2 57.2V256h83.6l-14.4 78.2H255V480H384c35.3 0 64-28.7 64-64V96c0-35.3-28.7-64-64-64H64z"/></svg>
              	</a>
                <a href="https://www.instagram.com/" target="_blank" style="text-decoration:none;">
                <svg xmlns="http://www.w3.org/2000/svg" height="34" width="34" viewBox="0 0 448 512">
                <path fill="#ffffff" d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"/></svg>	
                </a>
                <a href="https://www.youtube.com/" target="_blank" style="text-decoration:none;">
                	<svg xmlns="http://www.w3.org/2000/svg" height="38" width="38" viewBox="0 0 576 512">
                	<path fill="#ffffff" d="M549.7 124.1c-6.3-23.7-24.8-42.3-48.3-48.6C458.8 64 288 64 288 64S117.2 64 74.6 75.5c-23.5 6.3-42 24.9-48.3 48.6-11.4 42.9-11.4 132.3-11.4 132.3s0 89.4 11.4 132.3c6.3 23.7 24.8 41.5 48.3 47.8C117.2 448 288 448 288 448s170.8 0 213.4-11.5c23.5-6.3 42-24.2 48.3-47.8 11.4-42.9 11.4-132.3 11.4-132.3s0-89.4-11.4-132.3zm-317.5 213.5V175.2l142.7 81.2-142.7 81.2z"/></svg>
               	</a>
              </div>
          </div>
          
			<div class="col-sm-4">
	          	<div>
	              	<p>고객센터</p>
	                  <p>1544-0322</p>
	                  <p>
	                  	평일<span></span>오전 10:30 ~ 오후 05:00<br>
	                      점심시간<span></span> 오전 11:30 ~ 오후 12:30<br><em>(주말 및 공휴일 휴무)</em>
	                  </p>
	                  <div>
	                  	<a class="text-decoration-none" href="http://shop1.hucheum.cafe24.com/board/faq/list.html?cate_no=304">FAQ</a>
	                      <a class="text-decoration-none"  href="http://shop1.hucheum.cafe24.com/board/qna/list.html?cate_no=301">1:1 문의</a>
	                      <a class="text-decoration-none" href="http://shop1.hucheum.cafe24.com/board/urgency/list.html?cate_no=299">마케팅제휴문의</a>
	                  </div>
	              </div>
	          </div>
	      </div>
	</div>
  </footer>
