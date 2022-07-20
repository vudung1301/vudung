package Bon.service;

import org.springframework.stereotype.Service;

import Bon.entities.ProductImages;


@Service
public class ProductImagesService extends BaseService<ProductImages> {

	@Override
	protected Class<ProductImages> clazz() {
		return ProductImages.class;
	}

}

