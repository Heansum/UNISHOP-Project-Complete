# UnishopProject


# UnishopProject에 대해서...
- UnishopProject는 20~30대를 타겟으로 하는 Springboot/JPA기반에 쇼핑몰 사이트 웹사이트 입니다.
	-기존에 한국적인 느낌에 쇼핑몰이 아닌 깔끔하고 세련된 디자인을 적용해 봤습니다.
	
# 팀원 소개
- 이호겸
	-벡엔드 기술담당
- 김신원
	-디자인/반응형 프론트 기술담당
- 임현섭
	-페이지설계 /디자인/백엔드 기술담당


- 🎬 [유튜브 링크](https://youtu.be/H8tKb5FBWG4)

- 📕 [스토리 보드](https://www.figma.com/file/1l49U588J7vSp6tkarXMoB/model-%EC%A7%9C%EA%B8%B0?node-id=0%3A1)


## 개요

- 명칭 : Unishop
- 개발 인원 : 3명
	-Front end: **김신원, 임현섭 **
	-Back end: **이호겸, 임현섭**
- 개발기간 : 2021.07~
- 주요기능
	- 관리자(admin)가 상품을 등록하면 클라이언트가 상품을 고른후 결제
	- 클라이언트가 자신이 결제한 상품들을 관리 (마이페이지)
	- 관리자가 클라이언트가 구메한 상품들 관리 (관리자 페이지)
- 개발 언어 : Springboot,java, javaScript, html5/css
- 형상 관리 툴 : git
- 협업 툴 : slack, Trello
- 간단 소개 : Springboot/JPA를 사용한 쇼핑몰


## 프로젝트 특징

- 깔끔하고 새련된 디자인에 20~30대를 타겟으로 한 쇼핑몰 서비스

- 사용자 UX를 중심으로 개발한 UI

- 고급스러운 디자인
	-팀원들의 특성을 고려해서 각 파트별로 나눠서 협업
	-git을 통한 병합과 분기를 적극활용해서 작업
	
- API명세서와 가이드라인에 따라서 API호출 및 응답

- 사용한 API 
	-coolsms(ID/PW 찾기시 문자 인증)
	-import(결제)
	-주소API
	
- 공통 로직은 AOP와 intercepter로 묶어서 적용

- 실행 환경
	- Chrome




## 프로젝트에 사용한 라이브러리,의존성,승인키




### 주소 API 승인키
```
https://www.juso.go.kr/addrlink/addrLinkUrl.do?confmKey=devU01TX0FVVEgyMDIxMDcwNTE3MjgyMzExMTM2MTE=&returnUrl=http://localhost:8000
```


- cool sms 의존성

```bash
 <dependency>
    <groupId>net.nurigo</groupId>
    <artifactId>javaSDK</artifactId>
    <version>2.2</version>
  </dependency>
```



-JSP를 사용하기 위한 의존성

```xml
<dependency>
    <groupId>org.apache.tomcat</groupId>
    <artifactId>tomcat-jasper</artifactId>
    <version>9.0.46</version>
</dependency>

<!-- https://mvnrepository.com/artifact/javax.servlet/jstl -->
<dependency>
	<groupId>javax.servlet</groupId>
	<artifactId>jstl</artifactId>
	<version>1.2</version>
</dependency>
```



## 프로젝트 기본 yml파일 설정

```
server:
 port: 8000
 servlet:
    encoding:
      charset: UTF-8
      

spring:
  mvc:
    view:
      prefix: /WEB-INF/views/
      suffix: .jsp
  output:
    ansi:
      enabled: always

  datasource:
    driver-class-name: org.mariadb.jdbc.Driver
    username: unishop
    password: tlsdnjs12
    url: jdbc:mysql://localhost:3306/unishopdb      
    
    
  jpa:
    hibernate:
      ddl-auto: none  #create:, update, none
    show-sql: true
    open-in-view: true

  servlet:
    multipart:
      file-size-threshold: 1MB
      location: C:/images
      max-file-size: 6MB
      max-request-size: 6MB
      
```
- DB에 커넥션하는 설정은 환경에 맞게 설정 해 줘야 합니다.
	


## 🚀 핵심 트러블 슈팅




### 결제 리스트 구현시 DB모델링 모순을 해결했던 방법
```
결제 데이터를 fetch요청으로 저장하는것 까지 완료하고 이제 구메리스트에 해당 회원의 결제정보를 마이페이지에서 관리하게하기위해서 저장된 데이터를 뿌리려고 했을때
문제점을 발견 했다. 그 문제점은 바로 결제할때 상품의 정보를 저장하지 못했기때문. 그래서 결제시에 상품정보를 저장하려하니 db관계상 user에서 상품은 onetomany관계라서 컬랙션타입으로 돼있었다.
데이터는 오브젝트로 들어오는데 컬랙션타입에 저장이 안됐던 것이다.

해결 했던 방법
buy라는 구매정보만 저장하는 테이블을 만들어서 유저와 상품의 폴인키를 관리했다.
그래서 결제완료시 실행되는 컨트롤러에서 payment만 저장하는게 아니라 buy도 같이 저장함으로서 buy와 payment를 하나의 트랜잭션으로 묶는 방법을 선택했다.
 
```



### 이니시스 결제 api 호출 방법
```
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
jQuery넣어주기!

 let IMP = window.IMP;
        IMP.init("imp55496891");
        IMP.request_pay({
            pg: "html5_inicis",//이니시스 웹표준 결제창
            pay_method: "card",//결제방법
            merchant_uid: "ORD20180131-0000011",//주문번호
            name: "청바지",//상품명
            amount: 19000,//가격
            buyer_email: "ssar@gmail.com",//이메일
            buyer_name: "이호겸",//이름
            buyer_tel: "010-4242-4242",//연락처
            buyer_addr: "서울특별시 강남구 신사동",//주소
            buyer_postcode: "01181"//상품코드
        }, function (rsp) {
            console.log(rsp);
            if (rsp.success) {
                let msg = '결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;//아임포트 거래고유번호
                msg += '상점 거래ID : ' + rsp.merchant_uid;//주문번호
                msg += '결제 금액 : ' + rsp.paid_amount;//결제금액
                msg += '카드 승인번호 : ' + rsp.apply_num;
            } else {
                let msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
            }
            alert(msg);
        });
        

```
- 추가적인 파라미터값은 api문서 확인해서 추가할것!


### 결제성공시 파라메터
```
"id":1,
"apply_num":"",
"bank_name":null,
"buyer_addr":"경상남도 창원시 성산구 중앙대로 151, 123(용호동)",
"buyer_email":"fj2008@naver.com",
"buyer_name":"이호겸",
"buyer_postcode":"1",
"buyer_tel":"01089628481",
"card_name":null,
"card_number":"*********",
"card_quota":0,
"currency":"KRW",
"custom_data":null,
"imp_uid":"imp_842308363291",
"merchant_uid":"27",
"name":"test",
"paid_amount":1,
"paid_at":1628214352,
"pay_method":"point",
"pg_provider":"html5_inicis",
"pg_tid":"StdpayCARDINIpayTest20210806104551189406",
"pg_type":"payment",
"receipt_url":"https://iniweb.inicis.com/DefaultWebApp/mall/cr/cm/mCmReceipt_head.jsp?noTid=StdpayCARDINIpayTest20210806104551189406&noMethod=1",
"status":"paid",
"user":{
"id":1,
"username":"ssar",
"password":"1234",
"email":"fj2008@naver.com",
"address":"경상남도 창원시 성산구 중앙대로 151, 123(용호동)",
"phonenumber":"01089628481",
"name":"이호겸"
},
"posts":[
]
}
]
```
- 위 파라메터 값을 토대로 필요한 파라메터만 찾아서 데이터를 주고받으면 될 것 같습니다.



### 컴퓨터 옮겼을때 수정해야할 코드

- utils에 myPath에 저장될 이미지경로(이거때문에 1시간날렸습니다...)
- UserController에서 쿨sms보내는 코드 주석확인






## 😊 작업을 편하게 해줄 로직 모음 (테스트용 더미데이터 insert,그외 복붙해야하는 로직들)




### 관리자아이디 insert
```
INSERT INTO admin_user(username, PASSWORD ,email ,address ,phonenumber ,NAME ,role)VALUES('ssar','1234','and@naver.com','부산','01011111111','이름','ADMIN');

```




### 데이터베이스 생성 방법
```sql
CREATE USER 'unishop'@'%' IDENTIFIED BY 'korea1234';
GRANT ALL PRIVILEGES ON *.* TO 'unishop'@'%';
CREATE database unishopdb;
```




### JSTL teglib
```jsp
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
```




### 더미데이터
```sql
상품평 더미데이터
INSERT INTO comment(productcs, registrationtime, score ,sizecs ,colorcs ,image , user_id, product_id)VALUES('상품평4','2021-08-08','5','조금 작아요','색감 좋아요','이미지 이름',1,1);
```




```
function selectProductDelete(userId) {

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


//location.reload();
//}
```




















