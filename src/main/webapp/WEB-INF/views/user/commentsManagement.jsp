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
							<li><a href="/user/CommentsManagement" class="link-dark rounded">댓글 관리</a></li>
							<li><a href="/user/bucket/${principal.id}" class="link-dark rounded">장바구니</a></li>
							<li><a href="/user/payment/${principal.id}" class="link-dark rounded">구매 목록</a></li>
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
						
							<li><a href="/user/Certified" class="link-dark rounded">회원 정보 수정
									</a></li>
							<li><a href="/user/DeleteForm" class="link-dark rounded">회원 탈퇴</a></li>
							<li><a href="/user/logout" class="link-dark rounded">로그아웃</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<!--side bar End-->

	<!--컨텐츠 영역 section-->
	<section class="section" style="flex: 4;">
		<div>
			<h2>Comments management</h2>
			<!-- <hr/> -->
		</div>



		<div>
			<!-- <h4>내가 쓴 상품평</4> -->
		</div>
		<!-- 고객 상품평 -->
		<section class="member-comments-boxes">


			<!-- 댓글 테이블 -->
			<!-- DB에서 가져와서 던져줌 -->
			<table class="table" id="width-max">
				<thead class="category-management">
					<tr>
						<th scope="col">#</th>
						<th scope="col">이미지</th>
						<th scope="col">만족도</th>
						<th scope="col">사이즈</th>
						<th scope="col">색감</th>
						<th scope="col">등록자</th>
						<th scope="col">상품평</th>
						<th scope="col">수정하기 / 삭제</th>

					</tr>
				</thead>
				<tbody class="category-management">
					<c:forEach var="comments" items="${commentsEntity}">
						<tr id="reply-${comments.id}">
							<th scope="row">${comments.id}</th>
							<td><img id="img1" src="/upload/${comments.image}" class="modal-img float" alt="..."></td>
							<td>${comments.score}</td>
							<td>${comments.sizecs}</td>
							<td>${comments.colorcs}</td>
							<td>@${comments.user.username}</td>
							<td>${comments.productcs}</td>
							<td>
							<button type="button" class="pyong-btn" data-bs-toggle="modal" data-bs-target="#exampleModal" style="margin-left: 20px;">수정하기</button>
							<button type="button" class="pyong-btn" onclick="commentDelete(${comments.id})">삭제</button>
							</td>
						</tr>
						
					
						
<!-- 					<tr> -->
<!-- 						<th scope="row">2</th> -->
<!-- 						<td>Jacob</td> -->
<!-- 						<td>넘이뻐요</td> -->
<!-- 						<td>@fat</td> -->
<!-- 						<td>21-07-23</td> -->
<!-- 						<td> -->
<!-- 							<button type="button" class="btn btn-warning">수정</button> -->
<!-- 							<button type="button" class="btn btn-danger">삭제</button> -->

<!-- 						</td> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<th scope="row">1</th> -->
<!-- 						<td>Larry the Bird</td> -->
<!-- 						<td>사랑합니다~</td> -->
<!-- 						<td>@twitter</td> -->
<!-- 						<td>21-07-21</td> -->
<!-- 						<td> -->
<!-- 							<button type="button" class="btn btn-warning">수정</button> -->
<!-- 							<button type="button" class="btn btn-danger">삭제</button> -->

<!-- 						</td> -->
<!-- 					</tr> -->
				</tbody>
			</table>
			<!-- 고객 상품평 -->
		<section class="member-comments-box">
			<!-- 모달 사용해서 상품평 바로 테이블에 넣기 -->
			<!-- URL:https://getbootstrap.com/docs/5.0/components/modal/ -->

			<!-- 상품평 쓰기 -->
			<div class="input-comments">
				<!-- Button trigger modal -->
				

				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel"></h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<!-- 			모달바디 시작 -->
								<div class="modal-start">
									<!-- 여기에 폼있어요! -->
									<form onsubmit="commentUpdate()" id="my-form">
										<!-- 			상품코드 -->
										
										
															<div>
											<div class="input-parent">

												<div class="input-wrap" style="display: none;">
													<div class="input-group mb-3">
														<span class="input-group-text"
															id="inputGroup-sizing-default"></span> <input
															type="number" class="form-control"
															aria-label="Sizing example input"
															aria-describedby="inputGroup-sizing-default"
															value="${comments.id}" readonly="readonly"
															name="id">
													</div>
												</div>
											</div>
										</div>

										<div class="modal-flex">



											<section class="modal-img1">

												<img id="img-modal" src="/upload/${comments.image}"
													class="modal-img" alt="...">
												<div class="modal-text">${comments.product.productname}</div>





											</section>
										</div>
										
										<div class="modal-flex">
											
												
											
											
										</div>
										<div>
											<div class="input-parent">
												<h4>이미지 등록</h4>
												<div class="input-wrap">
													<div class="input-group mb-3">

														<input type="file" class="form-control"
															id="inputGroupFile02" name="image">

													</div>
												</div>
											</div>
										</div>

										<div>
											<div class="input-parent">
												<h4>만족도 점수</h4>
												<div class="input-wrap">
													<div class="input-group mb-3">
														<span class="input-group-text"
															id="inputGroup-sizing-default">별점</span> <input
															type="text" class="form-control"
															aria-label="Sizing example input"
															aria-describedby="inputGroup-sizing-default" name="score">
													</div>
												</div>
											</div>
										</div>

										<div>
											<div class="input-parent">
												<h4>사이즈 만족도</h4>
												<div class="input-wrap">
													<div class="input-group mb-3">
														<!-- <span class="input-group-text" id="inputGroup-sizing-default">Default</span> -->
														<input type="text" class="form-control"
															aria-label="Sizing example input"
															aria-describedby="inputGroup-sizing-default"
															name="sizecs">
													</div>
												</div>
											</div>
										</div>
										<div>
											<div class="input-parent">
												<h4>색감 만족도</h4>
												<div class="input-wrap">
													<div class="input-group mb-3">
														<!-- <span class="input-group-text" id="inputGroup-sizing-default">Default</span> -->
														<input type="text" class="form-control"
															aria-label="Sizing example input"
															aria-describedby="inputGroup-sizing-default"
															name="colorcs">
													</div>
												</div>
											</div>
										</div>
										<div>
											<div class="input-parent">
												<h4>상품평</h4>
												<div class="input-wrap">
													<div class="input-group mb-3">
														<!-- <span class="input-group-text" id="inputGroup-sizing-default">Default</span> -->
														<input type="text" class="form-control"
															aria-label="Sizing example input"
															aria-describedby="inputGroup-sizing-default"
															name="productcs">
													</div>
												</div>
											</div>
										</div>







										<!-- 모달바디끝 -->
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Close</button>
									<button type="submit" class="btn btn-primary">Save
										changes</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				</form>
				</c:forEach>
				
					</tbody>
					
				</table>
				<!-- Button trigger modal -->
				
		</section>
		</section>
		<!-- comments box end -->



	</section>






</main>


<script src="/js/commentManage.js"></script>
<%@ include file="../layout/footer.jsp"%>
