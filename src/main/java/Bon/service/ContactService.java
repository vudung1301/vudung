package Bon.service;

import org.springframework.stereotype.Service;

import Bon.entities.Contact;

@Service
public class ContactService extends BaseService <Contact> {
	@Override
	protected Class<Contact> clazz() {
		return Contact.class;
	}
}
