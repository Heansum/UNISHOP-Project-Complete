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
        merchant_uid: "123123",//주문번호
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
        	let response =await fetch("/user/payment",{
        		method:"post",
        		body:JSON.stringify(rsp),
        		headers:{
        			"Content-Type":"application/json; charset=utf-8"
        		}
        	});
        	
        	let parseResponse =await response.text();
        	console.log(parseResponse);
        	if(parseResponse === "ok"){
        		
        		
        		location.href="/user/myPage";
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