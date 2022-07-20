package Bon.service;

import org.springframework.stereotype.Service;

import Bon.entities.Categories;

@Service
public class CategoriesService extends BaseService<Categories>{

	@Override
	protected Class<Categories> clazz() {
		// TODO Auto-generated method stub
		return Categories.class;
	}
	
}
