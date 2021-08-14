package com.cos.unishop.web;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.unishop.domain.buy.Buy;
import com.cos.unishop.domain.buy.BuyRepository;
import com.cos.unishop.domain.comment.Comment;
import com.cos.unishop.domain.comment.CommentRepository;
import com.cos.unishop.domain.payment.PayMentRepository;
import com.cos.unishop.domain.payment.Payment;
import com.cos.unishop.domain.product.ProductRepository;
import com.cos.unishop.domain.user.User;
import com.cos.unishop.domain.user.UserRepository;
import com.cos.unishop.utils.Script;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class MyPageController {

	private final ProductRepository postRepository;
	private final UserRepository userRepository;
	private final PayMentRepository paymetMentRepository;
	private final BuyRepository buyRepository;
	private final CommentRepository commentRepository;
	private final HttpSession session;

	// 마이페이지로 가는 컨트롤러
	@GetMapping("/user/myPage")
	public String bucket() {
		return "user/myPage";
	}

	// 상품평관리하기로 가는 컨트롤러
	@GetMapping("/user/CommentsManagement")
	public String CommentsManagement(Model model) {
		User principal = (User) session.getAttribute("principal");
		int userId = principal.getId();
		List<Comment> commentsEntity = commentRepository.mfindAllByUserId(userId);

		model.addAttribute("commentsEntity", commentsEntity);

		return "user/commentsManagement";
	}
	// 장바구니로 가는 컨트롤러
	// 지금은 페이지만 연결해놓은거
	// 나중에 모델에 담에서뿌려야함 ㅇㅋ?

	@GetMapping("/user/bucket")
	public String myPage() {
		return "user/bucket";
	}

	// 구매목록으로 가는 컨트롤러
	@GetMapping("/user/payment/{id}")
	public String paymentList(@PathVariable int id, Model model) {

		User principal = (User) session.getAttribute("principal");
		int userId = principal.getId();
		List<Payment> paymentEntity = paymetMentRepository.mfindbyUserId(userId);
		System.out.println(paymentEntity.size());
		List<Buy> buyEntity = buyRepository.mfindbyUserBuy(userId);
		System.out.println(buyEntity.size());
		model.addAttribute("buyEntity", buyEntity);
		model.addAttribute("paymentEntity", paymentEntity);

		return "user/paymentList";
	}

	// 회원정보 탭으로 가서 바로 수정하는게 ux에 안좋은것같아서
	// 회원정보 수정탭에서 버튼눌러서 수정의사를 물어보고 회원정보 페이지로
	// 보내도록 설계했어
	// userUpdate.js에 보면 자바스크립트로 의사물어보고 회원정보 수정페이지로 이동시킴
	
	
	// 회원정보 수정페이지로 가는 컨트롤러
	@PostMapping("/user/UpdateCertified")
	public @ResponseBody String userUpdateForm(User user) {
		User userEntity = userRepository.mLogin(user.getUsername(), user.getPassword());
		if (userEntity == null) {
			return Script.href("/user/Certified", "입력된 정보가 올바르지 않습니다. 다시 입력해 주세요");
		} else {

			return Script.href("/user/Update");
		}

	}
	
	//마이페이지에서 회원정보수정하기전 인증화면으로 이동하는 컨트롤러
	@GetMapping("/user/Certified")
	public String userUpdateCertified() {
		return "user/userUpdateGo";
	}
	
	// 회원정보수정화면으로 가는 컨트롤러
	
	@GetMapping("/user/Update")
	public String goUserUpdate() {
		return "user/userUpdate";
	}

	// 회원정보 수정을 하는 컨트롤러
	@PutMapping("/user/Update/{id}")
	public @ResponseBody String userUpdate(@Valid @PathVariable int id, User user, BindingResult bindingResult) {
		System.out.println("실행됨?");
		User principal = (User) session.getAttribute("principal");

		User userEntity = userRepository.findById(id).get();

		if (principal.getId() == id) {
		userEntity.setName(user.getName());
		userEntity.setUsername(user.getUsername());
		userEntity.setPassword(user.getPassword());
		userEntity.setAddress(user.getAddress());
		userEntity.setEmail(user.getEmail());
		userEntity.setPhonenumber(user.getPhonenumber());
		userRepository.save(userEntity);
		return "ok";
		} else {
			return Script.href("/user/Certified", "회원 정보수정에 실패하셨습니다");
		}

	}

	// 회원탈퇴 페이지로 이동하는 컨트롤러
	@GetMapping("/user/DeleteForm")
	public String userDeleteForm() {
		return "user/userDeleteGo";
	}

	// 회원탈퇴를 진행하는 컨트롤러
	@DeleteMapping("/user/Delete/{id}")
	public @ResponseBody String userDelete(@PathVariable int id) {
		System.out.println(id);
		userRepository.deleteById(id);
		System.out.println("삭제성공 키모링");

		return "ok";
	}

}
