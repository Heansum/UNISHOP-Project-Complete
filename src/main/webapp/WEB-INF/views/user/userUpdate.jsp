<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!-- 구 버전 관리를 위해서 파일을 두개로 분리했습니다 -->
<!-- 정상적으로 작동함 -->

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
							<li><a href="/user/CommentsManagement" class="link-dark rounded">Comments
									management</a></li>
							<li><a href="/user/bucket/${principal.id}"
								class="link-dark rounded">Shopping bucket</a></li>
							<li><a href="/user/payment/${principal.id}"
								class="link-dark rounded">Payment list</a></li>
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
	<!--login-->
	<section class="mypage-section">
		<div>
			<h2>Overview</h2>
		</div>

		<hr />

		<div id="main">
			<main id="form-signin">


				<h2 style="font-size: revert; color: darkgrey;">Sign Up</h2>
				<form onsubmit="userUpdate(${principal.id})" id="updateForm">
					<div class="mb-3">
						<label for="formGroupExampleInput" class="form-label">name</label>
						<input type="text" class="form-control" placeholder="Input ID"
							name="name">
					</div>
					<div class="mb-3">
						<label for="formGroupExampleInput" class="form-label">ID</label> <input
							type="text" class="form-control" placeholder="Input ID"
							name="username">
					</div>
					<div class="mb-3">
						<label for="formGroupExampleInput2" class="form-label">Password</label>
						<input type="password" class="form-control"
							placeholder="Input Password" name="password">
					</div>
					<div class="mb-3">
						<label for="formGroupExampleInput" class="form-label">
							phoneNumber</label> <input type="text" class="form-control"
							id="formGroupExampleInput" placeholder="Input Password Again"
							name="phonenumber">
					</div>
					<div class="mb-3">
						<label for="formGroupExampleInput2" class="form-label">Email</label>
						<input type="text" class="form-control" placeholder="Input Email"
							name="email">
					</div>
					<input class="btn btn-info" type="button" onClick="goPopup();"
						value="findaddress" />
					<div class="mb-3">
						<label for="formGroupExampleInput" class="form-label">Address</label>
						<input type="text" class="form-control"
							placeholder="Input Address" name="address" id="address" readonly="readonly">
					</div>
					<%--서브주소 나중에구현 <div class="mb-3">
            <label for="formGroupExampleInput2" class="form-label">Address2</label>
            <input type="text" class="form-control" id="formGroupExampleInput4" placeholder="Input Address2">
          </div> --%>

					<button class="w-100 btn btn-lg btn-primary" type="submit"
						style="background-color: #f5f5f5; border: #f8f9fa; color: #383838;">Sign
						up</button>

				</form>
			</main>
		</div>

	</section>






</main>


<script src="/js/userUpdate.js"></script>

<script src="/js/joinForm.js"></script>
<%@ include file="../layout/footer.jsp"%>
