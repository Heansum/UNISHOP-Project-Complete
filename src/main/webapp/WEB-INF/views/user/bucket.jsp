<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<main class="sidebar-main">
	<!--side bar-->
	<div class="sidebars">
		<div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
			<a href="#"
				class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
				<svg class="bi me-2" width="30" height="24">
						<use xlink:href="#bootstrap" /></svg> <span class="fs-5 fw-semibold">My
					page</span>
			</a>
			<ul class="list-unstyled ps-0">
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#home-collapse"
						aria-expanded="true">서비스 정보</button>
					<div class="collapse show" id="home-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="/CommentsManagement" class="link-dark rounded">댓글 관리</a></li>
							<li><a href="/bucket/${principal.id}" class="link-dark rounded">장바구니</a></li>
							<li><a href="/payment/${principal.id}" class="link-dark rounded">구매 목록</a></li>
						</ul>
					</div>
				</li>
				            <li class="border-top my-3"></li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#account-collapse"
						aria-expanded="false">계정</button>
					<div class="collapse" id="account-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="#" class="link-dark rounded">로그아웃</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<!--side bar End-->

	<!--컨텐츠 영역 section-->
	<section class="mypage-section">
		<div class="title">
			<h2>Shopping bucket</h2>
			<!-- <hr/> -->
		</div>



		<!-- 장바구니 탭 글자들 -->
		<!-- DB에서 가져와서 던져줌 -->
		<table class="tab-text">
			<thead>
				<td class="line-bucket"></td>
			</thead>
		</table>

		<div>
			<!-- <h4>내가 쓴 상품평</4> -->
		</div>
		<!-- 장바구니 -->
		<section class="bucket-box">
			

			<div>
				

				<!-- 장바구니 테이블 -->
				<table class="table">
					<tbody>
					
						<c:forEach var="bucketProduct" items="${bucketProductsEntity}">
						<!-- 한줄 시작 -->
						<tr class="">
							<!-- th, for문으로 돌립니다 -->
							<!-- 나중에 여기에 EL 표현식으로 뿌려줍니다 -->
							<th scope="row">
								<!-- 체크박스 -->
								<div class="info-align-box">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" name="id" value="${bucketProduct.id}"
											id="${bucketProduct.id}" checked> <label
											class="form-check-label" for="flexCheckDefault"> </label>
									</div>
								</div>
							</th>



							<!-- 상품정보 -->
							<td class="product-info-master">
								<div class="product-info-box">
									<div class="minibox-img">
										<!-- 이미지 -->
										<img id="img1"
											src="/upload/${bucketProduct.product.image}"
											class="rounded float" alt="...">
									</div>

									<!-- 제품 이름 -->
									<div class="product-inforamtion" style="font-weight: 800;">
										${bucketProduct.product.productname}</div>

									<!-- 사이즈 -->
									<div class="product-size" style="display: flex; margin-left: 5px;">
										<input class="num-wrap" value="${bucketProduct.product.size}" readonly>
										<!-- 여기에 사이즈 EL 표현식 -->
									</div>
									<!-- 상품 페이지 버튼 -->
									<div class="product-button">
										<button type="button" class="btn btn-light"
											style="margin-left: 40px;" href="#">상품 페이지</button>
									</div>
								</div>

							</td>

							<div class="info-align">
								<!-- 가격 -->
								<td>
									<div class="info-align-box">
										<!-- 여기에 EL표현식으로 가격을 받아옵니다 -->
									</div>
								</td>

								<td>
									<div class="info-align-box">
										<div>
											<input class="all-count" value="${bucketProduct.product.price}" readonly>
										</div>

									</div>
								</td>
								<td>
									<div class="info-align-box">
										<button type="button" class="btn-util btn-danger" onclick = "selectProductDelete()">삭제</button>
									</div>
								</td>

							</div>
						</tr>
						
						</c:forEach>
						<!-- 한줄 종료 -->

					</tbody>
				</table>

				<!-- 테이블 end  -->

				<div class="checkbox-area">
					<!-- 체크박스 -->
					<div class="info-align-box">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="selectall"
								id="flexCheckDefault" onclick="selectAll(this)" checked> <label
								class="form-check-label" for="flexCheckDefault">
								<div>전체선택</div>
							</label>
						</div>
						<button type="button" class="btn-util btn-danger" onclick = "selectProductDelete(${principal.id})">삭제</button>
						<button type="button" class="btn-sujung btn-success" onclick="buy(${bucketProductEntity.id})">주문하기</button>
					</div>

				</div>
		</section>
		<!-- bucket end -->


	</section>



</main>
<script src="/js/bucket.js"></script>
<%@ include file="../layout/footer.jsp"%>