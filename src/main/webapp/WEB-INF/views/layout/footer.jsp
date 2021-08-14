<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--footer-->
<div class="jumbotron text-center" style="margin-bottom: 0">
	<p>하하하</p>
</div>
<script src="/js/header.js"></script>
<script>







		
	
		
	
		 

		
		function goPopup() {

			var pop = window.open("/juso", "pop",
					"width=570,height=420, scrollbars=yes, resizable=yes");

		}

		function jusoCallBack(roadFullAddr) {
			let addressEL = document.querySelector("#address");
			addressEL.value = roadFullAddr;
			console.log(addressEL)
		}
		


		
		

	</script>
</body>
</html>