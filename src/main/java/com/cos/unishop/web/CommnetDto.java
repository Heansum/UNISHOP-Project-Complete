package com.cos.unishop.web;



import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class CommnetDto {

	private int productId;//post_id
	
	@NotNull (message = "상품평 없음")
	@NotBlank(message = "상품평 없음")
	private String productcs;//상품평
	
	@NotNull (message = "만족도 점수 없음")
	@NotBlank(message = "만족도 점수 없음")
	private String score;//만족도 점수
	
	@NotNull (message = "사이즈 만족도 없음")
	@NotBlank(message = "사이즈 만족도 없음")
    private String sizecs; //사이즈 만족도
	
	@NotNull (message = "색감 만족도 없음")
	@NotBlank(message = "색감 만족도 없음")
    private String colorcs;// 색감 만족도
	

	private MultipartFile image;//이미지
	
}
