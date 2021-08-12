
function goUserUpdate(){
	alert("회원님의 정보를 수정하시겠습니까?")
	location.href="/userUpdateWont"
}

async function userUpdate(id){
	
	event.preventDefault();
	
	let form = document.querySelector("#updateForm");
	const formData = new FormData(form);
	
	let response = await fetch("/userUpdate/"+id,{
		method:"put",
		body:formData,
		headers:{}
	});
	
	let parseResponse = await response.text();
	console.log(parseResponse);
	
	if(parseResponse ==="ok"){
		alert("회원정보 수정이 완료 됐습니다.")
		location.href="/myPage";
	}
	
}

async function goUserDelete(id){
	alert("회원 탈퇴를 진행하시면 회원님의 정보가 삭제되며 그에 따라 추후에 발생하는 책임은 회원님에게 있습니다")
	
	let response = await fetch("/userDelete/"+id,{
		method: "delete"
	});
	let parseResponse = await response.text();
	console.log(parseResponse);
	if(parseResponse === "ok"){
		alert("그동안 고마웠다.....")
		location.href="/"
	}
}