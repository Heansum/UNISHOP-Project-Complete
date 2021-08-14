package com.cos.unishop.web;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

import com.cos.unishop.Sex;

import lombok.Data;

@Data
public class ProductDto {

	@NotNull (message = "상품이름 없음")
	@NotBlank(message = "상품이름 없음")
	private String productname;
	
	@NotNull (message = "이미지 없음")
	@NotBlank(message = "이미지 없음")
	private MultipartFile image;
	@NotNull (message = "상세정보 없음")
	@NotBlank(message = "상세정보 없음")
	private String detail;
	
	@NotNull (message = "가격정보 없음")
	@NotBlank(message = "가격정보 없음")
	private int price;
	@NotNull (message = "사이즈 없음")
	@NotBlank(message = "사이즈 없음")
	private String size;
	@NotNull (message = "카테고리 없음")
	@NotBlank(message = "카테고리 없음")
	private String category;
	
	@NotNull (message = "성별정보 없음")
	@NotBlank(message = "성별정보 없음")
	private Sex gender;
	
}
