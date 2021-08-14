package com.cos.unishop.web;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

import com.cos.unishop.Sex;

import lombok.Data;

@Data
public class ProductUpdateDto {

	
	@NotNull (message = "상품 코드 없음")
	@NotBlank(message = "상품 코드없음")
	private int productId;
	
	@NotNull (message = "상품 이름 없음")
	@NotBlank(message = "상품 이름 없음")
	private String productname;
	
	@NotNull (message = "상품 이미지 없음")
	@NotBlank(message = "상품 이미지 없음")
	private MultipartFile image;
	
	@NotNull (message = "상품 상세정보 없음")
	@NotBlank(message = "상품 상세정보없음")
	private String detail;
	
	@NotNull (message = "상품 가격 없음")
	@NotBlank(message = "상품 가격 없음")
	private int price;
	
	@NotNull (message = "상품 사이즈 없음")
	@NotBlank(message = "상품 사이즈없음")
	private String size;
	
	@NotNull (message = "상품 카테고리 없음")
	@NotBlank(message = "상품 카테고리 없음")
	private String category;
	
	@NotNull (message = "상품 성별 없음")
	@NotBlank(message = "상품 성별 없음")
	private Sex gender;
}
