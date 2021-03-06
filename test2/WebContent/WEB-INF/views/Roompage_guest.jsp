<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
      <head>
        <meta charset="UTF-8" />
        <title>Roompage_guest</title>
        <link rel="stylesheet" href="./style/Roompage_guest.css" />
      </head>
      <body>
        <div class="header">
          <div class="logo">
            <label>
              <a href="index.html">
               <img src="./images/logo.png" 
                alt="메인페이지" 
                id="logo">
              </a>
            </label>
          </div>
          <div class="img">
            <a href="mypage.html">
              <img
                src="./images/profile.png"
                alt="마이페이지" 
                id="profile"/>
              </a>
          </div>
        </div>
    
        <div class="body">
          <div class="name">
            <h1>잠자리 방</h1>
            <p><b>\120,000</b>/박</p>
          </div>
        </div>
        <div id="slideShow">
          <!-- 첫 사진이 제대로 안나옴.. -->
          <ul class="slides">
            <li><img src="./images/room1.png" alt="방사진1" /></li>
            <li><img src="./images/room2.png" alt="방사진2" /></li>
            <li><img src="./images/room3.png" alt="방사진3" /></li>
          </ul>
    
          <p class="controller">
            <!-- &lang: 왼쪽 방향 화살표 &rang: 오른쪽 방향 화살표 -->
            <span class="prev">&lang;</span>
            <span class="next">&rang;</span>
          </p>
        </div>
        <script>
          let slides = document.querySelector(".slides");
          let slideImg = document.querySelectorAll(".slides li");
          currentIdx = 0;
          slideCount = slideImg.length;
          prev = document.querySelector(".prev");
          next = document.querySelector(".next");
          slideWidth = 300;
          slideMargin = 100;
          slides.style.width = (slideWidth + slideMargin) * slideCount + "px";
          function moveSlide(num) {
            // 왼쪽으로 400px씩 이동
            slides.style.left = -num * 400 + "px";
            currentIdx = num;
          }
          prev.addEventListener("click", function () {
            // 첫 번째 슬라이드로 표시 됐을때는 이전 버튼 눌러도 아무런 반응 없게 하기 위해
            // currentIdx !==0일때만 moveSlide 함수 불러옴
            if (currentIdx !== 0) moveSlide(currentIdx - 1);
          });
          next.addEventListener("click", function () {
            // 마지막 슬라이드로 표시 됐을때는 다음 버튼 눌러도 아무런 반응 없게 하기 위해
            // currentIdx !==slideCount - 1 일때만 moveSlide 함수 불러옴
            if (currentIdx !== slideCount - 1) moveSlide(currentIdx + 1);
          });
        </script>
        
        <div class="body1">
          <div class="body1_1">
            <div class="body1_2">
              <div class="body_info">
                <h2>잠자리님의 아파트 전체</h2>
                
                <br />
                
                <span>최대 인원 4명</span>
    
                <br />
    
                <span>침실 2개</span><span> · </span><span>침대 2개</span
                ><span> · </span><span>욕실 1개</span>
    
                <br />
    
                <span>셀프 체크인 가능</span>
              </div>
            </div>
            <div class="body_info2">
              <h2>숙소 편의 시설</h2>
              <div class="info_a">
                <!-- 가로로 병렬시키기 -->
                <img class="emoji" alt="집" src="./images/home.PNG" />
                <div><b>아파트 전체</b></div>
                <img class="emoji" alt="세탁기" src="./images/washingmachine.PNG" />
                <div><b>세탁기</b></div>
              </div>
              <div class="info_b">
                <img class="emoji" alt="와이파이" src="./images/wifi.PNG" />
                <div><b>와이파이</b></div>
                <img class="emoji" alt="에어컨" src="./images/aircon.PNG" />
                <div><b>에어컨</b></div>
                <img class="emoji" alt="주방" src="./images/kitchen.PNG" />
                <div><b>주방</b></div>
              </div>
            </div>
            <div class="body_info3">
              <h2>숙소 위치</h2>
              <br>
              <div>
                <iframe 
                  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3261.8972314302264!2d129.15316575108915!3d35.15918366593513!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35688d58be7e6c63%3A0xdd37731410008030!2z67aA7IKw6rSR7Jet7IucIO2VtOyatOuMgOq1rCDsmrAx64-ZIDY1MS0y!5e0!3m2!1sko!2skr!4v1636036959507!5m2!1sko!2skr" 
                  width="90%"
                  height="300"
                  style="border:0;" 
                  allowfullscreen="" 
                  loading="lazy">
              </iframe>
              </div>
            </div>
    
            <div class="body_info4">
              <h2>리뷰</h2>
              <p>nn개</p>
              <div class="reviews">
                <div>
                  <img class="reviewer" src="./images/man.PNG" />
                  <div><b>룰루</b></div>
                  <pre>2021.4.12</pre>
                  <div>너무 깔끔하고 좋았습니다 &nbsp;</div>
                </div>
                <div>
                  <img class="reviewer" src="./images/man2.PNG" />
                  <div><b>랄라</b></div>
                  <pre>2021.7.08</pre>
                  <div>&nbsp;최고입니다 !!&nbsp;</div>
                </div>
                <div>
                  <img class="reviewer" src="./images/woman.PNG" />
                  <div><b>릴리</b></div>
                  <pre>2021.10.16</pre>
                  <div>&nbsp;다시 방문하고 싶어요</div>
                </div>
                <!-- <div class="more">후기 더보기</div> -->
              </div>
            </div>
            <div class="body_info5">
              <h2>호스트에게 쪽지 보내기</h2>
              <div>
                <textarea id="note" placeholder="호스트에게 쪽지 보내기 / 문의하기"></textarea>
              </div>
            </div> 
            <div class="submit">
              <input type="submit" id="submit" value="보내기" />
            </div>
          </div>
        </div>
          <div class="right">
            <div class="wrap">
              <div class="booking">
                <ul>
                  <li>
                    <span>
                      <b>체크인</b>
                    </span>
                    <input type="date" class="date">
                  </li>
                  <li>
                    <span>
                      <b>체크아웃</b>
                    </span>   
                    <input type="date" class="date">
                  </li>
                  <li>
                    <div class="add">
                      <b>인원 추가</b>
                    </div>
                    <span class="add2">성인</span>
                      <select class="select">
                        <option value="1">1명</option>
                        <option value="2">2명</option>
                        <option value="3">3명</option>
                        <option value="4">4명</option>
                        <option value="5">5명</option>
                        <option value="6">6명</option>
                        <option value="7">7명</option>
                        <option value="8">8명</option>
                        <option value="9">9명</option>
                        <option value="10">10명</option>
                      </select>
                    <span class="add3">아동</span>
                      <select class="select">
                        <option value="1">1명</option>
                        <option value="2">2명</option>
                        <option value="3">3명</option>
                        <option value="4">4명</option>
                        <option value="5">5명</option>
                        <option value="6">6명</option>
                        <option value="7">7명</option>
                        <option value="8">8명</option>
                        <option value="9">9명</option>
                        <option value="10">10명</option>
                      </select>
                  </li>
                </ul>
                <div class="button">
                  <button type="button" class="button2">예약 가능 여부 확인 / 예약 확인</button>
                </div>
            </div>
    
              <br />
    
              <div class="result">
                <ul>
                  <li>
                    <span>\ 50,000 X 3박 </span> 
                  </li>
                  <li>
                    <span>\ 150,00</span>
                  </li>
                  <li>
                    <span>
                     <b>총 합계</b>
                    </span>
                    <span>\ 150,000</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>  
        
      
    </body>
    </html>
    