package com.cos.unishop.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.unishop.domain.payment.PayMentRepository;
import com.cos.unishop.domain.payment.Payment;
import com.cos.unishop.domain.post.PostRepository;
import com.cos.unishop.domain.user.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PaymentController {

	private final PostRepository postRepository;
	private final UserRepository userRepository;
	private final PayMentRepository paymentRepository;
	private final HttpSession session;
	
	
	@PostMapping("/payment")
	public String payment(Payment payment) {
		System.out.println("나 실행됐냐?!");
		System.out.println(payment.getBuyer_name());
		System.out.println(payment.getPaid_amount());
		paymentRepository.save(payment);
		
		System.out.println("나 어째 됐냐?");
		return "redirect:/paymentList";
	}
}
