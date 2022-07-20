package Bon.service;

import Bon.entities.Role;
import org.springframework.stereotype.Service;

@Service
public class RoleService extends BaseService<Role> {

	@Override
	protected Class<Role> clazz() {
		return Role.class;
	}

}
