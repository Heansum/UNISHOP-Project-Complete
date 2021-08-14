package com.cos.unishop.web;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class CommentUpdateDto {

	private int id;
	

	private MultipartFile image;
	@NotNull (message = "만족도 점수 없음")
	@NotBlank(message = "만족도 점수 없음")
	private String score;
	@NotNull (message = "사이즈 만족도 없음")
	@NotBlank(message = "사이즈 만족도 없음")
	private String sizecs;
	@NotNull (message = "색감 만족도 없음")
	@NotBlank(message = "색감 만족도 없음")
	private String colorcs;
	@NotNull (message = "상품평 없음")
	@NotBlank(message = "상품평 없음")
	private String productcs;
	
}
