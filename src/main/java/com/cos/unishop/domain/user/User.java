package com.cos.unishop.domain.user;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.cos.unishop.domain.payment.Payment;
import com.cos.unishop.domain.product.Product;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Data
@Entity
public class User {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;// 프라이머리키

	@NotBlank(message = "아이디를 입력해주세요")
	@NotNull(message = "유저네임 키값이 없습니다")
	@Size(max = 20, message = "아이디가 길이를 초과하였습니다.20자 이내로 작성해주세요")
    @Column(unique = true, length = 20)
    private String username;
	
	
	@NotBlank(message = "비밀번호를 입력해주세요")
	@NotNull(message = "페스워드 키값이 없습니다")
	@Size(max = 18, message = "비밀번호가 길이를 초과하였습니다.18자 이내로 작성해주세요")
    private String password;

	@NotBlank(message = "이메일을 입력해주세요")
	@NotNull(message = "이메일 키값이 없습니다")
    private String email;
    private String address;
    
    @NotBlank(message = "휴대폰 번호를 입력해주세요")
	@NotNull(message = "휴대폰 번호를 키값이 없습니다")
    private String phonenumber; 
    
    @NotBlank(message = "성함을 입력해주세요")
	@NotNull(message = "이름의 키값이 없습니다")
    private String name;
    
    @JsonIgnoreProperties("user")
    @OneToMany(mappedBy = "user")
    private List<Product> products;
    
    
    @JsonIgnoreProperties("user")
    @OneToMany(mappedBy = "user", fetch = FetchType.EAGER)
    private List<Payment> payments;
}

