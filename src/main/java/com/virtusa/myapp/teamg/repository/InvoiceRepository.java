package com.virtusa.myapp.teamg.repository;

import com.virtusa.myapp.teamg.model.Invoice;

public interface InvoiceRepository extends ModelRepository<Invoice>
{

	Invoice findByCart(int cartid);
	
	
}
