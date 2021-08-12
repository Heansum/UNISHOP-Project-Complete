<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<main class="sidebar-main" style="justify-content: flex-start;">
    <!--side bar-->
      <div class="sidebars">
        <div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
          <a href="#" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
            <svg class="bi me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
            <span class="fs-5 fw-semibold">UNISHOP Administrator</span>
          </a>
          <ul class="list-unstyled ps-0">
            <li class="mb-1">
              <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
                상품 관리
              </button>
              <div class="collapse show" id="home-collapse">
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <li><a href="/admin/productManagement" class="link-dark rounded">상품 수정 / 삭제</a></li>
                  <li><a href="/admin/productRegister" class="link-dark rounded">상품 생성</a></li>
                  <li><a href="/admin/userLog" class="link-dark rounded">회원 로그</a></li>
                </ul>
              </div>
            </li>
            <li class="border-top my-3"></li>
            <li class="mb-1">
              <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
                계정
              </button>
              <div class="collapse" id="account-collapse">
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <li><a href="/admin/logout" class="link-dark rounded">로그아웃</a></li>
                </ul>
              </div>
            </li>
          </ul>
        </div>
      </div>
    <!--side bar End-->

    <!--Admin section-->
      
      <section class="section-log">
        <div>
          <h2>New Orders</h2>
        </div>

        <hr/>
        <!-- <br>
        <div>
          <h4>New</h4>
        </div> -->
        <br>
        <!-- log 테이블 -->
        <!-- DB에서 가져와서 던져줌 -->
        <table class="table" style="text-align: center;">
          <thead>
            <tr>
              <th scope="col"></th>
              
              <th scope="col">#</th>
              <th scope="col">유저 아이디</th>
              <th scope="col">유저 이름</th>
              <th scope="col">주소</th>
              <th scope="col">주문 날짜 / 시간</th>

              <!-- modal 써서 product 목록 완성 -->
              <th scope="col">주문 상품</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="buyEntity" items="${buyEntity}">
            <tr>
            
              <th scope="row">
                <!-- 체크박스 -->
                <div class="info-align-box">
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="id" value="${buyEntity.id}" id="${buyEntity.id}">
                    <label class="form-check-label" for="flexCheckDefault">
                    
                    </label>
                  </div>
                </div>
              </th>
              <!-- increment number -->
              <th scope="row">3</th>
              <!-- id -->
               <!-- id -->
              <td>${buyEntity.user.username}</td>
              <!-- real name -->
              <td>@${buyEntity.user.name}</td>
              <!-- address -->
              <td>${buyEntity.user.address}</td>
              <!-- time -->
              <td>${buyEntity.paymenttime}</td>

              <!-- 모달 영역 -->

              <td>
                
    
                  <div id="root">
                    <button type="button" class="btn btn-light" id="modal_opne_btn">상품 리스트</button>
                    <!-- <button type="button" id="modal_open_btn"></button> -->
                       
                  </div>

                  <div id="modal">
                  <!-- 여기에 DB에서 product 주문 목록을 가져옵니다. -->
                  <div class="modal-content">
                      
                      <!-- 상품이름 -->
                      <p>상품명</p><p style="font-weight: bold;">${buyEntity.product.productname}</p>
                      <!-- 상품 코드 -->
                      <p>상품코드</p><p style="font-weight: bold;">${buyEntity.product.id}</p>
                      <!-- 상품 사이즈 -->
                      <p>상품사이즈</p><p style="font-weight: bold;">${buyEntity.product.size}</p>
                      
                      <button type="button" class="btn btn-light" id="modal_close_btn">close</button>
                    
                      <!-- <button type="button" id="modal_close_btn">close</button> -->
                    
                  </div>
                
                  <div class="modal_layer"></div>
                </div>
              </td>

            </tr>
           
            </c:forEach>
          </tbody>
        </table>

        <div>
          <!-- 체크박스 -->
          <div class="checkbox-area">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" value="selectall" id="flexCheckDefault" onclick="selectAll(this)">
              <label class="form-check-label" for="flexCheckDefault">
                <div>전체선택</div>
              </label>
            </div>
            <button type="button" onclick="deleteCheck()" class="btn-util">
              배송완료

            </button>
          </div>
          
        </div>
      </section>

    </main>


<script src="/js/adminmodal.js"></script>
<script src="/js/admin.js"></script>


<%@ include file="../layout/footer.jsp"%>