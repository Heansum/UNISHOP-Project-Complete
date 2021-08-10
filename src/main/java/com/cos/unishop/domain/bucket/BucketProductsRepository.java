package com.cos.unishop.domain.bucket;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


@Repository
public interface BucketProductsRepository extends JpaRepository<BucketProducts, Integer>{

	@Query(value = "SELECT * FROM bucket_products WHERE user_id = :id", nativeQuery = true)
	List<BucketProducts> mFindAllByUserId(int id);
	
	@Query(value = "SELECT product_id FROM bucket_products WHERE user_id = :id", nativeQuery = true)
	List<Integer> mFindProductIdByUserId(int id);
	// UserId, 
	
	@Query(value = "SELECT product_id FROM bucket_products WHERE user_id = :id", nativeQuery = true)
	List<Integer> testByUserId(int id);
	
	@Query(value = "DELETE FROM bucket_products WHERE product_id = :id AND user_id = :userId", nativeQuery = true)
	void mDeleteBucketProductsIdByProductId(int id, int userId);
	
	@Query(value = "SELECT id FROM bucket_products WHERE product_id = :productId AND user_id = :userId ", nativeQuery = true)
	int mFindBucketProductsIdByProductIdAndUserId(int productId, int userId);
	
}
