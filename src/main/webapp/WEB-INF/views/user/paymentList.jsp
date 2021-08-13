<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

 <main>
    <!--side bar-->
      <div class="sidebars" style="padding-bottom: 500px;">
        <div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
          <a href="#" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
            <svg class="bi me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
            <span class="fs-5 fw-semibold">My page</span>
          </a>
          <ul class="list-unstyled ps-0">
            <li class="mb-1">
          <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse"	aria-expanded="true">
            서비스 정보</button>
					<div class="collapse show" id="home-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="/CommentsManagement" class="link-dark rounded">상품평 관리</a></li>
							<li><a href="/bucket/${principal.id}" class="link-dark rounded">장바구니</a></li>
							<li><a href="/payment/${principal.id}" class="link-dark rounded">구매 목록</a></li>
                </ul>
              </div>
            </li>
            <!-- <li class="mb-1">
              <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
                Dashboard
              </button>
              <div class="collapse" id="dashboard-collapse">
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <li><a href="#" class="link-dark rounded">Overview</a></li>
                  <li><a href="#" class="link-dark rounded">Weekly</a></li>
                  <li><a href="#" class="link-dark rounded">Monthly</a></li>
                  <li><a href="#" class="link-dark rounded">Annually</a></li>
                </ul>
              </div>
            </li>
            <li class="mb-1">
              <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
                Orders
              </button>
              <div class="collapse" id="orders-collapse">
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <li><a href="#" class="link-dark rounded">New</a></li>
                  <li><a href="#" class="link-dark rounded">Processed</a></li>
                  <li><a href="#" class="link-dark rounded">Shipped</a></li>
                  <li><a href="#" class="link-dark rounded">Returned</a></li>
                </ul>
              </div>
            </li> -->
            <li class="border-top my-3"></li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#account-collapse"
						aria-expanded="false">계정</button>
					<div class="collapse" id="account-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">

							<!-- <li><a href="#" class="link-dark rounded">New...</a></li> -->
							<li><a href="/user/Certified" class="link-dark rounded">회원 정보 수정
									</a></li>
							<li><a href="/userDeleteForm" class="link-dark rounded">회원 탈퇴</a></li>

							<li><a href="#" class="link-dark rounded">로그아웃</a></li>
						</ul>
					</div>
				</li>
          </ul>
        </div>
        <!--컨텐츠 영역 section-->
      <section class="section" style="flex: 4;">
        <div>
          <h2>구매 목록</h2>
          <!-- <hr/> -->
        </div>

        

        <div>
          <!-- <h4>내가 쓴 상품평</4> -->
        </div>
        <!-- 고객 상품평 -->
        <section class="bucket-box">
          <!-- 모달 사용해서 상품평 바로 테이블에 넣기 -->
          <!-- URL:https://getbootstrap.com/docs/5.0/components/modal/ -->
          
         
          <div class="input-comments">

          <!-- 장바구니 테이블 -->
          <!-- DB에서 가져와서 던져줌 -->
          <table class="table">
            
            <tbody>

            <c:forEach var="buy" items="${buyEntity}">
              <!-- 한줄 시작 -->  
              <tr>
                <!-- th, for문으로 돌립니다 -->
                <!-- 나중에 여기에 EL 표현식으로 뿌려줍니다 -->
                <th scope="row">
                  <!-- 여기에 EL로 구매일자 넣습니다 -->
                  <div class="paymenttime-bucket">
                  ${buy.paymenttime}
                  </div>
                  <!-- 체크박스 -->
                  <!-- <div class="info-align-box">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                      
                      </label>
                    </div>
                  </div> -->
                </th>


                <!-- 상품정보 -->
                <!-- 여기에서 상품 이름을 클릭하면 그 상품에 해당하는 detail을 뿌리는 기능 추가 -->
                <td>
                  <div class="product-info-box2">
                    <div class="minibox-img2">
                      <!-- 이미지 -->
                      <img id="img1" src="/upload/${buy.product.image}" class="rounded float" alt="...">
                    </div>
                
                    <!-- 제품 이름 -->
                    <div class="product-inforamtion" style="font-weight: 800;">
                      <a href="/product/${buy.product.id}">${buy.product.productname}</a>
                    </div>

                    <!-- 사이즈 추가 -->
                    <!-- 사이즈 컴포넌트 추가 -->
                    <div class="product-size">
                      size
                      <!-- 여기에 사이즈 EL 표현식 -->
                      <input class="num-wrap" value="${buy.product.size}" readonly>
                    </div>
                    <!-- 상품 페이지 버튼 -->
                    <!-- 여기에 DB연동해서 상품 페이지 정보를 받아서 바로 갈 수 있게 합니다 -->
                    <!-- <div class="product-button"> -->
                      <!-- <button type="button" class="btn btn-light" style="margin-left: 20px;" href="#">상품 페이지</button>    -->
                    <!-- </div> -->
                  </div>
                
                </td>
                
                <div class="info-align">
                  <!-- 가격 -->
                  <td>
                    <div class="info-align-box">
                      <!-- 여기에 EL표현식으로 가격을 받아옵니다 -->
                     ${buy.product.price} 원
                    </div>
                  </td>
                  
                </div>
              </tr>
              </c:forEach>
              
              <!-- 한줄 종료 -->


            </tbody>
          </table>


        </section>
        <!-- comments box end -->


        
      </section>
      </div>
    <!--side bar End-->

    

    
    
    
    
    
    </main>

<%@ include file="../layout/footer.jsp" %>