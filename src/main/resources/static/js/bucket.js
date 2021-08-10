function goLogin() {
	location.href = "/auth/loginForm";
}

// 디테일에서 바로 물건 사는 함수
// 일단 물건 사기전에 장바구니에 저장을 한다
// 그리고 구매페이지로 이동시킨다!
async function goPayment(productId, userId) {
// 		id 잡아서 장바구니에 저장!
// 		여기서 id는 productEntity의 id
		console.log("유저Id입니다"+userId);
		
		let postDto = {
				id: productId
		};
		
		let response = await fetch("/bucket", {
			method:"post",
			body: JSON.stringify(postDto),
			headers: {
				"Content-Type": "application/json;charset=utf-8"
			}
		});
		
		let parseResponse = await response.text();

		console.log(parseResponse);
		
		if (parseResponse === "ok") {
			// 바로이동하지말고 버켓에 들리자,
			// 버켓 Get에 들리고
			// 거기서 id를 bucketProducts로 잡아주고
			 
			// 여기서 바로 요청을 한번더해서 int로 값을 받고 밑에 넣자
			// 여기서 id를 필요한다
			 
			
			
			let response = await fetch("/bucket/id/"+productId,{method: "get"});
			console.log(response);
			let bucketId = await response.text();
			location.href= "/payment/view/"+bucketId;
			
		}

		if (parseResponse === "no") {
			
			let response = await fetch("/bucket/id/"+productId,{method: "get"});
			console.log(response);
			let bucketId = await response.text();
			
			location.href = "/payment/view/" + bucketId;
		}
		
}



// 일단 하나만 살수 있게 구현한 것입니다.
// 장바구니에서 물건사는 함수
function buy() {
			// 체크 박스 전체 겟수
//			$('input:checkbox[name="id"]').length

			//체크된 박스 겟수
//			$('input:checkbox[name="id"]:checked').length

			// 물건 넘기기!
			$('input:checkbox[name="id"]').each (
				async function checked(){
				if(this.checked){

					// 체크 된 것들 each로 각각의 value 값을 던져주게 만든다
		            alert(this.value); 
					let id = this.value;
					// fetch로 value에 담으면 될듯!
					let postDto = {
							id: id
					};
					
				// 저장만 하기 때문에 response로 String을 안받았음
				// 왜냐하면 여러개를 던져주기 때문에!
				let response = await fetch("/bucket/buy", {
					method: "post",
					body: JSON.stringify(postDto),
					headers: {
						"Content-Type": "application/json;charset=utf-8"
					}
				});
				
				let parseResponse = await response.text();
				
				if(parseResponse === "ok"){
					// 여기는 결제화면으로 이동하는 컨트롤러입니다
					// 보내주는 값은 bucketProducts Id값입니다
					location.href="/payment/view/"+id;
				}
				console.log(id+" : id 번째 물건 저장되었어요!");
				location.href="/payment/view/"+id;
		      }
				
			});
			// end forEach문
			
			
			//물건을 넘겨 줬으면 이제 View컨트롤러를 때릴 url
			
			
			
		}
		// end buy 함수




// 장바구니에 담는 함수
async function inputBucket(productId, userId, productname, image, size, price) {

	console.log("나실행됨?");

	let postDto = {
		id: productId,
		productname: productname,
		image: image,
		size: size,
		price: price
	};

	let response = await fetch("/bucket", {
		method: "post",
		body: JSON.stringify(postDto),
		headers: {
			"Content-Type": "application/json;charset=utf-8"
		}
	});

	let parseResponse = await response.text();

	console.log(parseResponse);

	if (parseResponse === "ok") {

		if (confirm("선택한 상품이 장바구니에 담겼습니다, 장바구니로 이동하시겠습니까?") == true) {
			location.href = "/bucket/" + userId;

		} else {
			return;
		}
	}

	if (parseResponse === "no") {

		if (confirm("선택한 상품이 장바구니에 담겼습니다, 장바구니로 가시겠습니까?") == true) {
			location.href = "/bucket/" + userId;

		} else {
			return;
		}
	}

}



// 장바구니에서 삭제하는 함수
function selectProductDelete(userId) {
	var checkNull = $('input:checkbox[name="id"]:checked').val();
	var userId = userId;
	console.log(userId);
	console.log(checkNull);
	if(checkNull == undefined){
		alert("삭제할 상품을 선택해주세요");
	} else{
		if (confirm("선택하신 상품을 삭제 하시겠습니까?") == true) {
			$('input:checkbox[name="id"]').each(
				async function checked() {
					if (this.checked) {
						
						// 체크 된 것들 each로 각각의 value 값을 던져주게 만든다
	
						// alert는 확인용!
						//		            alert(this.value); 
						let id = this.value;
						// fetch로 value에 담으면 될듯!
						let postDto = {
							id: id
						};
	
						// 저장만 하기 때문에 response로 String을 안받았음
						// 왜냐하면 여러개를 던져주기 때문에!
						await fetch("/bucket/delete", {
							method: "delete",
							body: JSON.stringify(postDto),
							headers: {
								"Content-Type": "application/json;charset=utf-8"
							}
						});
	
						console.log(id + " : id 번째 물건 삭제되었어요!");
					}
	
				});
				console.log ("userId 나오나요? : "+ userId);
				if(userId != null){
					console.log("네 나옵니다!!" + userId);
				}
			location.href = "/bucket/" + userId;
			alert("상품이 삭제되었습니다.");
		} else {
			return;
		}
	}
	
	
}




// 체크박스 모두 선택하는 함수
function selectAll(selectAll) {
	const checkboxes
		= document.querySelectorAll('input[type="checkbox"]');

	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectAll.checked
	})
}