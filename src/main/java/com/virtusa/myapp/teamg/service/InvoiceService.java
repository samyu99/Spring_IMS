package com.virtusa.myapp.teamg.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.virtusa.myapp.teamg.model.Invoice;
import com.virtusa.myapp.teamg.repository.InvoiceRepository;


@Service
@Transactional
public class InvoiceService
{
  @Autowired
  private InvoiceCodeGenerator invoiceCodeGenerator;

  @Autowired
  private InvoiceRepository invoiceRepository;

  /**
   * Generates an invoice.
   *
   * @return The generated {@link Invoice}.
   */
  public Invoice generateInvoice()
  {
    return invoiceRepository.save(new Invoice(String.format("%010d", invoiceCodeGenerator.next())));
  }
  
  public Invoice saveInvoice(Invoice invoice) {
	  return invoiceRepository.save(invoice);
	  
  }
  
  public Invoice findInvoiceByCartId(int cartid) {
	  return invoiceRepository.findByCart(cartid);
  }
  
  
}
