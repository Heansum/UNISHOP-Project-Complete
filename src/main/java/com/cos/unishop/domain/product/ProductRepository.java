package com.cos.unishop.domain.product;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer>{
	@Query(value = "SELECT * FROM product WHERE category= :category", nativeQuery=true)
	List <Product> mFindProductsByProductCategory(String category);

}
