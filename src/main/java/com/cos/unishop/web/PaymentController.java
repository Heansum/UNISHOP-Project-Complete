package com.cos.unishop.web;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.unishop.domain.bucket.BucketProducts;
import com.cos.unishop.domain.bucket.BucketProductsRepository;
import com.cos.unishop.domain.buy.Buy;
import com.cos.unishop.domain.buy.BuyRepository;
import com.cos.unishop.domain.comment.Comment;
import com.cos.unishop.domain.payment.PayMentRepository;
import com.cos.unishop.domain.payment.Payment;
import com.cos.unishop.domain.product.Product;
import com.cos.unishop.domain.product.ProductRepository;
import com.cos.unishop.domain.user.User;
import com.cos.unishop.domain.user.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PaymentController {

	private final ProductRepository productRepository;
	private final UserRepository userRepository;
	private final PayMentRepository paymentRepository;
	private final BuyRepository buyRepository;
	private final HttpSession session;
	private final BucketProductsRepository bucketProductsRepository;
	
	// 하나의 상품만 보여주는 view
	// 결제화면으로 이동하는 컨트롤러
	// 결제화면 보여주는 컨트롤러
    @GetMapping("/payment/view/{id}")
    public String paymentPage(@PathVariable int id, Model model) {
    	// 유저가 선택한 장바구니에서 상품을 사게 id로 잡아줍니다.
    	// 즉 장바구니id를 잡고, 장바구니에서 선택한 상품의 id를 잡아서 그 값을 가져와야됩니다.
    	// 일단 그렇다면 장바구니id를 가져받아야 됩니다.
    	// 형변환을 해줘야됩니다.
    	BucketProducts bucket = bucketProductsRepository.getById(id);
    	int productId = bucket.getProduct().getId();
    	Product productEntity = productRepository.findById(productId).get();
    	
    	
    	
    	
    	model.addAttribute("productEntity", productEntity);
    	
    	// 장바구니에 담은 것을 보여주게 합니다.
    	return "product/payment";
    }
  
    
    
	
	
	//@RequestBody는 HTTP요청의 body 내용을 자바 객체로 매핑 하는 역할을 한다 
	@PostMapping("/payment")
	public @ResponseBody String payment(@RequestBody Payment payment) {
		
		User principal =(User) session.getAttribute("principal");
		
		Buy buy = new Buy();
		//구매일자
		
		SimpleDateFormat format2 = new SimpleDateFormat ( "yyyy년 MM월dd일 HH시mm분ss초");
		Date time = new Date();
				
		String time1 = format2.format(time);
		buy.setPaymenttime(time1);			
		System.out.println(time1);
		
		System.out.println("등록 시간 저장완료");
		
		
		payment.setUser(principal);
		System.out.println("유저저장완료");
		
		int postId = Integer.parseInt(payment.getBuyer_postcode()); 
		System.out.println(postId);
		Product product = productRepository.findById(postId).get();
		System.out.println("구매 저장시작");
		buy.setProduct(product);
		buy.setUser(principal);
		
		buyRepository.save(buy);
		System.out.println("구매저장완료");
		paymentRepository.save(payment);
		
		System.out.println("나 어째 됐냐?");
		return "ok";
	}
	
	
}
