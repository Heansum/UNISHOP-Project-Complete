<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<main class="main-box">


	<!-- section-->
	<section class="section">
		<div class="title">
			<h2>Payment Page</h2>
			<!-- <hr/> -->
		</div>



		<div>
		</div>
		<section class="bucket-box">
			<!-- URL:https://getbootstrap.com/docs/5.0/components/modal/ -->


			<div class="input-comments">
			
				<table class="table">
					<thead>
						<tr>
							<th scope="col"></th>
							<th class="th-align" scope="col">상품정보</th>
							<th scope="col">판매가</th>
							<th scope="col">수량</th>
							<th scope="col">합계</th>
							<th scope="col"></th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">
								<!-- <div class="info-align-box">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                      
                      </label>
                    </div>
                  </div> -->
							</th>


							
							<td>
								<div class="product-info-box">
									<div class="minibox-img">
										<!-- 상품 이미지 -->
										<img id="img1"
											src="/upload/${productEntity.image}"
											class="rounded float" alt="...">
									</div>

									<!-- 상품 이름 -->
									<div class="product-inforamtion" style="font-weight: 800;">
										${productEntity.productname}</div>

									<!-- 상품 사이즈 -->
									<div class="product-size">
										size
										<input class="num-wrap" value="${productEntity.size}" readonly>
									</div>
									<!-- <div class="product-button"> -->
									<!-- <button type="button" class="btn btn-light" style="margin-left: 20px;" href="#">ìí íì´ì§</button>    -->
									<!-- </div> -->
								</div>

							</td>


							<div class="info-align">
								<!-- 상품가격 -->
								<td>
									<div class="info-align-box">
										${productEntity.price}
									</div>
								</td>
								<!-- 수량 -->
								<td>
									<div class="info-align-box">

										<!-- 상품 수량정보 value안에 값들어갑니다 -->
										<div>
											<input class="num-wrap" value="2" readonly>
										</div>

										<!-- <div class="up-and-down">
                          <img src="https://img.icons8.com/material-outlined/24/000000/up.png"/>
                          <img src="https://img.icons8.com/material-outlined/24/000000/down--v1.png"/>
                        </div> -->

									</div>
								</td>
								<!-- 합계 -->
								<!-- 상품 합계입니다 가격*수량 = 합계value -->
								<td>
									<div class="info-align-box">
										<div>
											<input class="all-count" value="47.98$" readonly>
										</div>

									</div>
								</td>
								<!-- <td>
                    <div class="info-align-box">
                      <button type="button" class="btn btn-danger">
                        ì­ì 

                      </button>
                    </div>
                  </td> -->

							</div>
						</tr>
						<!-- 한줄 끝 row end -->


						<!-- 한줄 시작 row start -->
					

					</tbody>
				</table>

				<!-- íì´ë¸ end  -->

				<!-- <div class="checkbox-area"> -->
				<!-- ì²´í¬ë°ì¤ -->
				<!-- <div class="info-align-box"> -->
				<!-- <div class="form-check">
                <input class="form-check-input" type="checkbox" value="selectall" id="flexCheckDefault" onclick="selectAll(this)">
                <label class="form-check-label" for="flexCheckDefault">
                  <div>ì ì²´ì í</div>
                </label>
              </div>
              <button type="button" class="btn btn-danger">
                ì­ì 

              </button> -->
				<!-- </div> -->

				<!-- </div> -->
		</section>
		<!-- bucket end -->

		<!-- ë²í¼ div -->
		<!-- ëª¨ë ì í ë²í¼ ìì­ -->



		<!-- ëª¨ë ì­ì  ë²í¼ ìì­ -->
		<div class="delete-button">
			<!-- <button type="submit" style="background-color: #f5f5f5; border:  #f8f9fa; color: #383838;" >ëª¨ë ì­ì </button>
         -->
		</div>
		<!-- <div class="delete-button">
          <button class="w-100 btn btn-lg btn-primary" type="submit" style="background-color: #f5f5f5; border:  #f8f9fa; color: #383838;" >ëª¨ë ì í</button>
        </div> -->




	</section>

	<!-- ê²°ì  ë°ì¤ ìì­ìëë¤ -->
	<section class="payment-box">
		<div class="col-md-7 col-lg-8">
			<h4 class="mb-3">Billing address</h4>

			<!--           form Start -->
			<form class="needs-validation" novalidate 
				onsubmit="goPaymentAPI('${productEntity.id}','${productEntity.productname}','${productEntity.image}','${productEntity.detail}','${productEntity.price}','${productEntity.size}','${productEntity.category}','${productEntity.gender}','${principal.email}','${principal.name}','${principal.phonenumber}','${principal.address}')">
				<div class="row g-3">
					<div class="col-sm-6">
						<label for="firstName" class="form-label">name</label> <input
							type="text" class="form-control" id="firstName" placeholder=""
							value="${principal.name}" name="name" readonly="readonly" required>
						<div class="invalid-feedback">Valid first name is required.
						</div>
					</div>



					<div class="col-12">
						<label for="username" class="form-label">Username</label>
						<div class="input-group has-validation">
							<span class="input-group-text">@</span> <input type="text"
								class="form-control" id="username" 
								name="username" readonly="readonly" value="${principal.username}" required>
							<div class="invalid-feedback">Your username is required.</div>
						</div>
					</div>

					<div class="col-12">
						<label for="email" class="form-label">Email <span
							class="text-muted">(Optional)</span></label> <input type="email"
							class="form-control" id="email" placeholder="you@example.com"
							name="email" value="${principal.email}" readonly="readonly">
						<div class="invalid-feedback">Please enter a valid email
							address for shipping updates.</div>
					</div>
					<!-- 					ì£¼ìì°¾ê¸° ë²í¼ cssìì  ë¶í -->
<!-- 					<input class="btn btn-info" type="button" onClick="goPopup();" -->
<!-- 						value="findaddress" /> -->
					<div class="col-12">
						<label for="address" class="form-label">Address</label> <input
							type="text" class="form-control" id="address" class="address"
							placeholder="1234 Main St" value="${principal.address}" readonly="readonly"  required>
						<div class="invalid-feedback">Please enter your shipping
							address.</div>
					</div>




					<hr class="my-4">

					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="same-address">
						<label class="form-check-label" for="same-address">Shipping
							address is the same as my billing address</label>
					</div>

					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="save-info">
						<label class="form-check-label" for="save-info">Save this
							information for next time</label>
					</div>


					<hr class="my-4">

					<button class="w-100 btn btn-primary btn-lg" type="submit"
						style="background-color: #f5f5f5; border: #f8f9fa; color: #383838;">Continue
						to checkout</button>
					<!--         form End -->
			</form>
		</div>
	</section>



</main>


<script>
function goPaymentAPI(id,productname,image,detail,price,size,category,gender,email,name,phonenumber,address){
	
	event.preventDefault();
	
	let productDto = {
			productId: id,
			productname: productname,
			image: image,
			detail: detail,
			price: price,
			size: size,
			category: category,
			gender: gender
	};
	console.log(productDto);
	
	let IMP = window.IMP;
    IMP.init("imp55496891");
    IMP.request_pay({
        pg: "html5_inicis",//이니시스 웹표준 결제창
        pay_method: "card",//결제방법
        merchant_uid: "354351",//주문번호
        name: productname,//상품명
        amount: price,//가격
        buyer_email: email,//이메일
        buyer_name: name,//이름
        buyer_tel: phonenumber,//연락처
        buyer_addr: address, //주소
        buyer_postcode: id //상품코드
    }, async function (rsp) {
//         console.log(rsp);
        if (rsp.success) {
        	alert("결제가 완료되었습니다.");
        	console.log(rsp);
        	let response =await fetch("/payment",{
        		method:"post",
        		body:JSON.stringify(rsp),
        		headers:{
        			"Content-Type":"application/json; charset=utf-8"
        		}
        	});
        	
        	let parseResponse =await response.text();
        	console.log(parseResponse);
        	if(parseResponse === "ok"){
        		
        		
        		location.href="/myPage";
        	}
        	
        	
//             msg += '고유ID : ' + rsp.imp_uid;//아임포트 거래고유번호
//             msg += '상점 거래ID : ' + rsp.merchant_uid;//주문번호
//             msg += '결제 금액 : ' + rsp.paid_amount;//결제금액
//             msg += '카드 승인번호 : ' + rsp.apply_num;
        } else {
        	alert("결제가 실패하였습니다.");
            msg += '에러내용 : ' + rsp.error_msg;
        }
        
    });


}

function goLogin(){
	alert("실행됨?");
	location.href = "/auth/loginForm";
}
</script>

<%@ include file="../layout/footer.jsp"%>