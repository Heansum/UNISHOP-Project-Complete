package com.cos.unishop.domain.bucket;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.Cascade;

import com.cos.unishop.domain.product.Product;
import com.cos.unishop.domain.user.User;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Data
@Entity
public class BucketProducts {
// 장바구니 DB입니다
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@JoinColumn(name = "user_id")
	@ManyToOne(fetch = FetchType.EAGER)
	private User user; 
	
	@JsonIgnoreProperties({"user"})
	@JoinColumn(name = "product_id")
	@ManyToOne(cascade = CascadeType.ALL)
	private Product product;
	
//	private int count;
	
//	@JoinColumn(name = "total_payment")
//	private int totalPayment;
	
//	private String productname;
//	private String image;
//	private String size;
//	private int price;
	
}
