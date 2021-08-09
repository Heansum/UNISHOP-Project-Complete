package com.cos.unishop.domain.bucket;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


@Repository
public interface BucketProductsRepository extends JpaRepository<BucketProducts, Integer>{

	@Query(value = "SELECT * FROM bucket_products WHERE user_id = :id", nativeQuery = true)
	List<BucketProducts> mFindAllByUserId(int id);
	
	@Query(value = "SELECT productname FROM product WHERE id = (SELECT product_id FROM bucket_products WHERE user_id = :id)", nativeQuery = true)
	List<String> mFindByUserId(int id);
	// UserId, 
	
	@Query(value = "SELECT product_id FROM bucket_products WHERE user_id = :id", nativeQuery = true)
	int testByUserId(int id);
}
