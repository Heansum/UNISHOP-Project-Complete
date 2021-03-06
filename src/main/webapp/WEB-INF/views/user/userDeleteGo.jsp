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
							<!-- <li><a href="#" class="link-dark rounded">New...</a></li> -->
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

	<!--메인 section-->
	<section class="mypage-section">
		<div>
			<h2>회원 정보 수정</h2>
		</div>

		<hr />
		
		<h2 style="padding: 200px">탈퇴하면 가지고 있는 모든정보가 사라집니다. <br />탈퇴 하시겠습니까?</h2>

		<div style="align-self: center;">
		<button class="bal-ak btn-outline-danger" onclick="goUserDelete(${principal.id})">회원 탈퇴</button>
		</div>
	</section>

</main>

<script src="/js/userUpdate.js"></script>

<%@ include file="../layout/footer.jsp"%>
