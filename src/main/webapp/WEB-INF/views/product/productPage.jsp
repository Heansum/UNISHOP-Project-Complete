<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<!-- 간판입니다 -->

<c:set var="category" scope="session" value="${categoryEntity}"/>

<!-- 총 18개 반복 -->

<!-- 여자  -->
	<!-- 상의 -->
		<!--  셔츠 -->
		<!-- 긴팔 -->
		<!-- 	원피스 -->
		
	<!-- 	하의 -->
		<!-- 	청바지 -->
		<!--  치마 -->
		<!-- 와이드팬츠 -->
		
	<!-- 	아우터 -->
		<!-- 	가디건 -->
		<!-- 	트렌치 코트 -->
		<!-- 	코드 -->
		
<!-- 남자  -->
	<!-- 상의 -->
		<!--  셔츠 -->
		<!-- 긴팔 -->
		<!-- 	원피스 -->
		
	<!-- 	하의 -->
		<!-- 	청바지 -->
		<!--  치마 -->
		<!-- 와이드팬츠 -->
		
	<!-- 	아우터 -->
		<!-- 	가디건 -->
		<!-- 	트렌치 코트 -->
		<!-- 	코드 -->		
		
		
		
<c:choose>

	<c:when test="${category == 'w_shirts'}">
		<div class="main-top-information">
		
		
			<div class="new-main">
			
				<div class="top-width">
				
					<h2>Shirts</h2>
					<h4>"Don't be into trends. Don't make fashion own you, but you decide what you are, what you want to express by the way you dress and the way to live." —Gianni Versace</h4>
				
				</div>
				<div></div>
				<div class="content-img-top">
					<img
						src="https://images.unsplash.com/photo-1515734674582-29010bb37906?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80">
				</div>
			</div>
		</div>
		
		<div class="main-content-product">
		<div class="new-main">
			<h3>Beautiful Women Shirts</h3>
		</div>
	</c:when>

	<c:when test="${category == 'w_shortsleeve'}">
		<div class="main-top-information">
		
		
			<div class="new-main">
			
				<div class="top-width">
				
					<h2>Shortsleeve</h2>
					<h4>"Fashion is not necessarily about labels. It's not about brands. It's about something else that comes frome within you." —Ralph Lauren</h4>
				
				</div>
				<div></div>
				<div class="content-img-top">
					<img
						src="https://images.unsplash.com/photo-1500336624523-d727130c3328?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80">
				</div>
			</div>
		</div>
		
		<div class="main-content-product">
		<div class="new-main">
			<h3>Beautiful Women Shortsleeve</h3>
		</div>
	</c:when>

	<c:when test="${category == 'w_onepiece'}">
		<div class="main-top-information">
		
		
			<div class="new-main">
			
				<div class="top-width">
				
					<h2>Onepiece</h2>
					<h4>"Dress shabbily and they remember the dress, dress impeccably and they remember the woman." —Coco Chanel</h4>
				
				</div>
				<div></div>
				<div class="content-img-top">
					<img
						src="https://images.unsplash.com/photo-1539008835657-9e8e9680c956?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80">
				</div>
			</div>
		</div>
		
		<div class="main-content-product">
		<div class="new-main">
			<h3>Beautiful Women Onepiece</h3>
		</div>
	</c:when>

	<c:when test="${category == 'w_jeans'}">
		<div class="main-top-information">
		
		
			<div class="new-main">
			
				<div class="top-width">
				
					<h2>Jeans</h2>
					<h4>"I wish I had invented blue jeans. They have expression, modesty, sex appeal, simplicity - all I hope for in my clothes." —Yves Saint Laurent</h4>
				
				</div>
				<div></div>
				<div class="content-img-top">
					<img
						src="https://images.unsplash.com/photo-1527628217451-b2414a1ee733?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80">
				</div>
			</div>
			
		
		</div>
		
		<div class="main-content-product">
		<div class="new-main">
			<h3>Beautiful Women Jeans</h3>
		</div>
		</c:when>

	<c:when test="${category == 'w_skirt'}">
		<div class="main-top-information">
		
		
			<div class="new-main">
			
				<div class="top-width">
				
					<h2>Skirt</h2>
					<h4>"If you wear a short enough skirt, the party will come to
						you." —Dorothy Parker</h4>
				
				</div>
				<div></div>
				<div class="content-img-top">
					<img
						src="https://images.unsplash.com/photo-1564246614931-1be8ad768e63?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80">
				</div>
			</div>
		</div>
		
		<div class="main-content-product">
		<div class="new-main">
			<h3>Beautiful Women Skirts</h3>
		</div>
	</c:when>

	<c:when test="${category == 'w_widepants'}">
		<div class="main-top-information">
		
		
			<div class="new-main">
			
				<div class="top-width">
				
					<h2>Widepants</h2>
					<h4>"To look long and lean, wear a wide-leg trouser with high heels." —Rebecca Gayheart </h4>
				
				</div>
				<div></div>
				<div class="content-img-top">
					<img
						src="https://images.unsplash.com/photo-1580651214613-f4692d6d138f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80">
				</div>
			</div>
		</div>
		
		<div class="main-content-product">
		<div class="new-main">
			<h3>Beautiful Women Widepants</h3>
		</div>
	</c:when>

	<c:when test="${category == 'w_cardigan'}">
		<div class="main-top-information">
		
		
			<div class="new-main">
			
				<div class="top-width">
				
					<h2>Cardigan</h2>
					<h4>"It's not about celebrity or not. It's all about, do you have that 'girl in a cardigan' in you. You gotta have that." —John Krasinski</h4>
				
				</div>
				<div></div>
				<div class="content-img-top">
					<img
						src="https://images.unsplash.com/photo-1475048975523-705992b13a68?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80">
				</div>
			</div>
		</div>
		
		<div class="main-content-product">
		<div class="new-main">
			<h3>Beautiful Women Cardigan</h3>
		</div>
	</c:when>

	<c:when test="${category == 'w_trenchcoat'}">
		<div class="main-top-information">
		
		
			<div class="new-main">
			
				<div class="top-width">
				
					<h2>Trenchcoat</h2>
					<h4>"Everyone in the world should have a trench coat, and there should be a trench coat for everyone in the world. It does not matter your age; it doesn't matter your gender." —Angela Ahrendts</h4>
				
				</div>
				<div></div>
				<div class="content-img-top">
					<img
						src="https://images.unsplash.com/photo-1608113378058-552d2829d450?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80">
				</div>
			</div>
			
		
		</div>
		
		<div class="main-content-product">
		<div class="new-main">
			<h3>Beautiful Women Trenchcoat</h3>
		</div>
		</c:when>	

		<c:when test="${category == 'w_coat'}">
			<div class="main-top-information">
			
			
				<div class="new-main">
				
					<div class="top-width">
					
						<h2>Coat</h2>
						<h4>"What you wear is how you present yourself to the world, especially today, when human contacts are so quick. Fashion is instant language." —Miuccia Prada</h4>
					
					</div>
					<div></div>
					<div class="content-img-top">
						<img
							src="https://images.unsplash.com/photo-1574108233109-fc429c0488fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80">
					</div>
				</div>
				
			
			</div>
			
			<div class="main-content-product">
			<div class="new-main">
				<h3>Beautiful Women Coats</h3>
			</div>
		</c:when>			
		



	<c:when test="${category == 'm_shirts'}">
		<div class="main-top-information">
		
		
			<div class="new-main">
			
				<div class="top-width">
				
					<h2>Shirts</h2>
					<h4>"Clothes and manners do not make the man; but when he is made, they greatly improve his appearance." —Arthur Ashe</h4>
				
				</div>
				<div></div>
				<div class="content-img-top">
					<img
						src="https://images.unsplash.com/photo-1617196701537-7329482cc9fe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80">
				</div>
			</div>
		</div>
		
		<div class="main-content-product">
		<div class="new-main">
			<h3>Cool men Shirts</h3>
		</div>
	</c:when>

	<c:when test="${category == 'm_shortsleeve'}">
		<div class="main-top-information">
		
		
			<div class="new-main">
			
				<div class="top-width">
				
					<h2>Shortsleeve</h2>
					<h4>"Clothes are like a good meal, a good movie, great pieces of music." —Michael Kors</h4>
				
				</div>
				<div></div>
				<div class="content-img-top">
					<img
						src="https://images.unsplash.com/photo-1601917993872-16fc37c1f872?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80">
				</div>
			</div>
		</div>
		
		<div class="main-content-product">
		<div class="new-main">
			<h3>Cool men Shortsleeve</h3>
		</div>
	</c:when>

	<c:when test="${category == 'm_longsleeves'}">
		<div class="main-top-information">
		
		
			<div class="new-main">
			
				<div class="top-width">
				
					<h2>Longsleeves</h2>
					<h4>"The way we dress affects the way we think, the way we feel, the way we act, and the way others react to us." —Julie Rasband</h4>
				
				</div>
				<div></div>
				<div class="content-img-top">
					<img
						src="https://images.unsplash.com/photo-1599847022902-f64cc1ae97fd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2000&q=80">
				</div>
			</div>
		</div>
		
		<div class="main-content-product">
		<div class="new-main">
			<h3>Cool men Longsleeves</h3>
		</div>
	</c:when>

	<c:when test="${category == 'm_jeans'}">
		<div class="main-top-information">
		
		
			<div class="new-main">
			
				<div class="top-width">
				
					<h2>Jeans</h2>
					<h4>"It is hard to think that a $2 billion company with 4,300-plus people couldn't compete with six people in blue jeans." —Steve Jobs</h4>
				
				</div>
				<div></div>
				<div class="content-img-top">
					<img
						src="https://images.unsplash.com/photo-1510867759970-3d2ca293be77?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80">
				</div>
			</div>
			
		
		</div>
		
		<div class="main-content-product">
		<div class="new-main">
			<h3>Cool men Jeans</h3>
		</div>
		</c:when>

	<c:when test="${category == 'm_slacks'}">
		<div class="main-top-information">
		
		
			<div class="new-main">
			
				<div class="top-width">
				
					<h2>Slacks</h2>
					<h4>"Being perfectly well-dressed gives one a tranquillity that no religion can bestow." 
					—Ralph Waldo Emerson</h4>
				
				</div>
				<div></div>
				<div class="content-img-top">
					<img
						src="https://images.unsplash.com/photo-1615800012383-6420b0da1fb4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=678&q=80">
				</div>
			</div>
		</div>
		
		<div class="main-content-product">
		<div class="new-main">
			<h3>Cool men Skirts</h3>
		</div>
	</c:when>

	<c:when test="${category == 'm_widepants'}">
		<div class="main-top-information">
		
		
			<div class="new-main">
			
				<div class="top-width">
				
					<h2>Widepants</h2>
					<h4>"Fashion has to reflect who you are, what you feel at the moment and where you’re going." —Pharrell Williams</h4>
				
				</div>
				<div></div>
				<div class="content-img-top">
					<img
						src="https://images.unsplash.com/photo-1624571032416-f86c480bf2b0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80">
				</div>
			</div>
		</div>
		
		<div class="main-content-product">
		<div class="new-main">
			<h3>Cool men Widepants</h3>
		</div>
	</c:when>

	<c:when test="${category == 'm_cardigan'}">
		<div class="main-top-information">
		
		
			<div class="new-main">
			
				<div class="top-width">
				
					<h2>Cardigan</h2>
					<h4>"I'm a big cardigan sweater guy." —James Franco</h4>
				
				</div>
				<div></div>
				<div class="content-img-top">
					<img
						src="https://images.unsplash.com/photo-1599577180361-d8a326bafca3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80">
				</div>
			</div>
		</div>
		
		<div class="main-content-product">
		<div class="new-main">
			<h3>Cool men Cardigan</h3>
		</div>
	</c:when>

	<c:when test="${category == 'm_trenchcoat'}">
		<div class="main-top-information">
		
		
			<div class="new-main">
			
				<div class="top-width">
				
					<h2>Trench coat</h2>
					<h4>"The man who, as is often said, can get away with wearing a trench coat over his dinner jacket, or an old school tie for a belt, is the one who in fact understands best the rules of proper dress and can bend them to suit his own personality and requirements." —G. Bruce Boyer</h4>
				
				</div>
				<div></div>
				<div class="content-img-top">
					<img
						src="https://images.unsplash.com/photo-1617525104975-5043e63c8d80?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80">
				</div>
			</div>
			
		
		</div>
		
		<div class="main-content-product">
		<div class="new-main">
			<h3>Awesome men Trench coat</h3>
		</div>
		</c:when>	

		<c:when test="${category == 'm_coat'}">
			<div class="main-top-information">
			
			
				<div class="new-main">
				
					<div class="top-width">
					
						<h2>Coat</h2>
						<h4>"I like cool jackets - a nice fall or winter coat. You can get a lot of use out of it, and you'll wear it frequently, so it can really set the tone of your uniform for the season." —John Legend</h4>
					
					</div>
					<div></div>
					<div class="content-img-top">
						<img
							src="https://images.unsplash.com/photo-1622866651408-f373152f173b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80">
					</div>
				</div>
				
			
			</div>
			
			<div class="main-content-product">
			<div class="new-main">
				<h3>Cool men Coats</h3>
			</div>
		</c:when>			
		
	
		
		
</c:choose>


	<!--Main-content-->


	<div class="new-main-products">
	
		
	<c:forEach var="product" items="${productsEntity}">
		<div class="products">
			<div class="content-img">
				

				<a href="/product/${product.id}">
					<div class="content-wrap-img">

						<img
							src="/upload/${product.image}"
							class="rounded float-start" alt="...">

					</div>
				</a>
			</div>
			<h5>${product.productname}</h5>


			<p>size: S M L</p>
			<p>${product.price}</p>

		</div>
	</c:forEach>	
		<!--End One of Products-->

<!-- 		<div class="products"> -->

<!-- 			<div class="content-img"> -->
<!-- 				<a href="#"> -->
<!-- 					<div class="content-wrap-img"> -->

<!-- 						<img id="img1" -->
<!-- 							src="https://images.unsplash.com/photo-1590400516695-36708d3f964a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80" -->
<!-- 							class="rounded float" alt="..."> -->

<!-- 					</div> -->
<!-- 				</a> -->
<!-- 			</div> -->
<!-- 			<h5>white skirts</h5> -->
<!-- 			<p>size: S M L</p> -->
<!-- 			<p>45.99$</p> -->

<!-- 		</div> -->

<!-- 		<div class="products"> -->
<!-- 			<div class="content-img"> -->
<!-- 				<a href="#"> -->
<!-- 					<div class="content-wrap-img"> -->
<!-- 						<img -->
<!-- 							src="https://images.unsplash.com/photo-1551163943-3f6a855d1153?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80" -->
<!-- 							class="rounded float" alt="..."> -->
<!-- 					</div> -->
<!-- 				</a> -->
<!-- 			</div> -->
<!-- 			<h5>light brown skirts</h5> -->
<!-- 			<p>size: S M L</p> -->
<!-- 			<p>32.99$</p> -->
<!-- 		</div> -->

<!-- 		<div class="products" id="content-end"> -->
<!-- 			<div class="content-img"> -->
<!-- 				<a href="#"> -->
<!-- 					<div class="content-wrap-img"> -->
<!-- 						<img id="img" -->
<!-- 							src="https://images.unsplash.com/photo-1583846783214-7229a91b20ed?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80" -->
<!-- 							class="rounded float" alt="..."> -->
<!-- 					</div> -->
<!-- 				</a> -->
<!-- 			</div> -->
<!-- 			<h5>black button skirts</h5> -->
<!-- 			<p>size: S M L</p> -->
<!-- 			<p>39.99$</p> -->
<!-- 		</div> -->

<!-- 		<div class="products"> -->
<!-- 			<div class="content-img"> -->
<!-- 				<a href="#"> -->
<!-- 					<div class="content-wrap-img"> -->
<!-- 						<img id="img2" -->
<!-- 							src="https://images.unsplash.com/photo-1561932850-f13404855e53?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=313&q=80" -->
<!-- 							class="rounded float" alt="..."> -->
<!-- 					</div> -->
<!-- 				</a> -->
<!-- 			</div> -->
<!-- 			<h5>long yellow skirts</h5> -->
<!-- 			<p>size: S M L</p> -->
<!-- 			<p>42.99$</p> -->
<!-- 		</div> -->

<!-- 	</div> -->


	</div>

</div>


<%@ include file="../layout/footer.jsp"%>
