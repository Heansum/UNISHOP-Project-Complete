//사이즈 선택 요청하는 함수
async function sizeSelect(id,productname,image,detail,price,category,gender){
	alert("해당 사이즈를 선택하시겠습니까?");
	
	event.preventDefault();
	
	let size = document.querySelector("#size").value;
	console.log(size);
	let productDto = {
		id: id,
		productname: productname,
		image: image,
		detail: detail,
		price: price,
		category: category,
		gender: gender,
		size: size
		
	};
	
	console.log(productDto);

	let response =await fetch("/sizeUpdate/"+id,{
		method:"put",
		body:JSON.stringify(productDto),
		headers: {
			"Content-Type":"application/json; charset=utf-8"
		}
	});
	
	let parseResponse =await response.text();
	console.log(parseResponse);
	
	
	
}


