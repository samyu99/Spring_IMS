package com.virtusa.myapp.teamg.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.virtusa.myapp.teamg.vhelper.CartLineItemvHelper;
import com.virtusa.myapp.teamg.vhelper.CustomerVoHelper;
import com.virtusa.myapp.teamg.vhelper.ProductVoHelper;
import com.virtusa.myapp.teamg.vhelper.UserVoHelper;
import com.virtusa.myapp.teamg.vo.CartLineItemVO;
import com.virtusa.myapp.teamg.vo.CustomerVO;
import com.virtusa.myapp.teamg.vo.ProductVO;
import com.virtusa.myapp.teamg.vo.UserVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.virtusa.myapp.teamg.model.CartLineItem;
import com.virtusa.myapp.teamg.model.Customer;
import com.virtusa.myapp.teamg.model.Invoice;
import com.virtusa.myapp.teamg.model.MyCartOrder;
import com.virtusa.myapp.teamg.model.Product;

import com.virtusa.myapp.teamg.model.User;
import com.virtusa.myapp.teamg.service.CartLineItemService;
import com.virtusa.myapp.teamg.service.CustomerService;
import com.virtusa.myapp.teamg.service.InvoiceService;
import com.virtusa.myapp.teamg.service.MyCartOrderService;
import com.virtusa.myapp.teamg.service.ProductService;
import com.virtusa.myapp.teamg.service.SecurityService;
import com.virtusa.myapp.teamg.service.UserService;
import com.virtusa.myapp.teamg.validator.UserValidator;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
 
    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;
    
    @Autowired
	private ProductService productService;

    @Autowired
	private CustomerService customerservice;
    
    @Autowired
	private MyCartOrderService mycartOrderService;

    @Autowired
    private InvoiceService invoiceService;
    
    @Autowired
    private CartLineItemService cartlineitemService;
    
    private static final String POSTFORM = "PostForm";
    private static final String CLISTITEMS = "clistitems";
    private static final String CUSTOMER = "customer";
    private static final String INVCODE = "invcode";
    private static final String ORDER = "order";
    private static final String SALESN = "salesn";
    private static final String REDIRECTTOPRODUCTLIST = "redirect:/productslist";

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") UserVO userVo, BindingResult bindingResult) {
    	User user= UserVoHelper.getInstance().parseUserVoToEntity(userVo);

        userValidator.validate(user, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        userService.save(user);

        securityService.autoLogin(user.getUsername(), user.getPasswordConfirm());

        return "redirect:/welcome";
    }

    @GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @GetMapping({"/","/welcome"})
    public String welcome(Model model) {
        return "welcome";
    }
    
    @GetMapping({"profile"})
    public String profile(Model model) {
        return "profile";
    }
    
    @GetMapping({"mycart"})
    public String myCart(Model model) {
        return "mycart";
    }
    
    @GetMapping({"pay"})
    public String myPayment(@ModelAttribute("customerForm") CustomerVO customerVO, Model model) {
    	Customer customer= CustomerVoHelper.getInstance().parseCustomerVoToEntity(customerVO);
    	model.addAttribute("c", customer);

		customerservice.saveMyCustomer(customer);

		return "payment";
    }
    
    @GetMapping({"success"})
    public String myPaymentSucess(Model model) {
        return "payment_success";
    }
    
    @RequestMapping("/c")
	public ModelAndView createCustomer() {
		ModelAndView model = new ModelAndView();

		Customer customer = new Customer();
		model.addObject("customerForm", customer);
		model.setViewName(CUSTOMER);
		return model;
	}

    
	 @RequestMapping("/p") 
	 public ModelAndView createProduct() 
	 {
		 ModelAndView model = new ModelAndView();
	 
	  
	  model.addObject(POSTFORM, new Product()); 
	  model.setViewName("product");
	 	  
	  return model;
	  
	 }

	
	@RequestMapping("/savep")
	public String addProduct(@ModelAttribute(POSTFORM) ProductVO productVO, Model model, BindingResult bindingResult) {
    	Product product= ProductVoHelper.getInstance().parseProductVoToEntity(productVO);
		product.setQuantityavailable(product.getQuantitesreceived());
		productService.saveMyProduct(product);
		return REDIRECTTOPRODUCTLIST;
	}
	
	@GetMapping("/productslist")
	public String registerProduct(ModelMap model) {
		List<Product> p = productService.findAll();
		model.addAttribute("p", p);
		return "productlist";
	}
    
	@GetMapping("/productsinvlist")
	public String showavailableProduct(ModelMap model) {
		List<Product> p = productService.findAllAvailableProducts();
		model.addAttribute("p", p);
		return "productavailablelist";
	}
    
    @PostMapping("/savec")
	public String addCustomer(@ModelAttribute("customerForm") CustomerVO customerVO, Model model) {
    	Customer customer=CustomerVoHelper.getInstance().parseCustomerVoToEntity(customerVO);
		model.addAttribute("c", customer);

		customerservice.saveMyCustomer(customer);

		return "customerlist";
	}
   
    @GetMapping("/order")
    public ModelAndView order(HttpServletRequest request,HttpSession session ) {
    
    	ModelAndView model = new ModelAndView();
		int cid = Integer.parseInt(request.getParameter("cid"));
	    session.setAttribute("cid", cid);
		CartLineItem cl = new CartLineItem();
    	
    	model.addObject(POSTFORM, cl);
		model.addObject("cid", cid);

    	
    	model.setViewName(ORDER);
        return model;
    }
    
    @GetMapping(value = "/productNamesAutocomplete")
	@ResponseBody
	public List<String> search(HttpServletRequest request){
		return productService.search(request.getParameter("term"));
	}
    
    
    @GetMapping("/go")
	public ModelAndView fav(@RequestParam(name="Product_Name") String productname, HttpServletRequest request,HttpSession session) {
	    ModelAndView model = new ModelAndView();
		Product p = productService.findbyProductname(productname);
		CartLineItem cl = new CartLineItem();
		cl.setProduct(p);
		
	    model.addObject(POSTFORM, cl);
    	model.setViewName(ORDER);
        return model;
		}
    
  
    
    @PostMapping("/addproduct")
    public ModelAndView addProduct(@ModelAttribute("PostForm") CartLineItemVO cartLineItemVO, HttpSession session, HttpServletRequest request) {
    	ModelAndView model = new ModelAndView();
    	List<CartLineItem> clist= null;
    	List<Integer> itemp = null;
    	int totAmount = 0;
    	
    	if(session.getAttribute(CLISTITEMS) == null) {
      	  clist = new ArrayList<>();
      	  itemp = new ArrayList<>();
    	} else {
    		clist = (List<CartLineItem>) session.getAttribute(CLISTITEMS);
    		itemp = (List<Integer>) session.getAttribute("itemplist");
    		for(int ip: itemp) {
    			totAmount += ip;
    		}
    	}
    	
    	
    	MyCartOrder mc = new MyCartOrder();
    	
    	
    	int cid = (Integer) session.getAttribute("cid");
		Customer c = customerservice.getByCustomerId(cid);
		session.setAttribute(CUSTOMER, c);
    	mc.setCust(c);
   		CartLineItem cartlineitem= CartLineItemvHelper.getInstance().parseCartLineItemtoCartLineEnty(cartLineItemVO);
    	int q = cartlineitem.getQuantitysold();
	    session.setAttribute("q", q);
	    
	    cartlineitem.setQuantitysold(q);
	    cartlineitem.getProduct().setQuantityavailable(cartlineitem.getProduct().getQuantityavailable()-q);
        
	    int itemprice = cartlineitem.getItemprice();
	    itemp.add(itemprice);
	    totAmount += itemprice;
	    cartlineitem.setItemprice(itemprice);
        
        clist.add(cartlineitem);
        productService.saveMyProduct(cartlineitem.getProduct());
        cartlineitemService.saveMyCartLineItem(cartlineitem);
       
        
        session.setAttribute("cl", cartlineitem);
        session.setAttribute(CLISTITEMS, clist);
        session.setAttribute("itemplist", itemp);
        session.setAttribute("ta", totAmount);

    	model.addObject("PostTableForm",cartlineitem);
    	model.setViewName(ORDER);
		
    	return model;
    	
    }
    @PostMapping("/cardpayment")
    public String cardPayment() {
        return "card";
    }
    
    @PostMapping("/payment_succesful")
    public String paymentSuccess() {
        return "payment_succesful";
    }
    
    @PostMapping("/generateinvoice")
    
    public String invoice(HttpSession session)
    {
    	
    	
      final Invoice invoice = invoiceService.generateInvoice();
      int cid = (Integer) session.getAttribute("cid");
		Customer c = customerservice.getByCustomerId(cid);
      invoiceService.saveInvoice(invoice);
      String invcode = invoice.getCode();
      session.setAttribute(INVCODE, invcode);
      session.setAttribute("invoice", invoice);
      
      
      MyCartOrder mc = new MyCartOrder();
	  	mc.setCartlineitemslist((List<CartLineItem>)session.getAttribute(CLISTITEMS));
	  	mc.setCust(c);
	  	mc.setTotalAmount((int)session.getAttribute("ta"));
	  	mc.setInvoice(invoice);
	  	mycartOrderService.save(mc);
	  	invoice.setCart(mc);
	  	invoiceService.saveInvoice(invoice);
	     return "invoice_success";
    }
    
    @SuppressWarnings("unchecked")
	@GetMapping("/invoice")
    public String invoice(Model model, HttpSession session) {
    	
    	List<CartLineItem> clist= (List<CartLineItem>) session.getAttribute(CLISTITEMS);
    	model.addAttribute(CLISTITEMS,clist);
        return "invoice";
    }
    
    @GetMapping("/saleslist")
	public String showSalesOrdersList(ModelMap model) {
		List<MyCartOrder> cartlist = mycartOrderService.findall();
		
		model.addAttribute("cart", cartlist);
		return SALESN;
	}
    
    
    @GetMapping("/invoicep")
    public String printInvoice(Model model, HttpSession session) {
    	
	
		Customer c = (Customer) session.getAttribute(CUSTOMER);
    	List<CartLineItem> clist= (List<CartLineItem>) session.getAttribute(CLISTITEMS);
    	String invcode =  (String) session.getAttribute(INVCODE);
    	int ta = (int)session.getAttribute("ta");
    	System.out.println(c.getCustomeremail()+"123");
    	model.addAttribute(CLISTITEMS,clist);
    	model.addAttribute(INVCODE,invcode);
    	model.addAttribute("ta",ta);
    	model.addAttribute("c",c);
    	session.invalidate();
    	return "invoiceprint";
    
    }
    
   
    @GetMapping(value="pricesearch")
	 public String search(ModelMap model,@RequestParam(name="min_price") String min,@RequestParam(name="max_price") String max){
			 List<MyCartOrder> cart = mycartOrderService.search(Integer.parseInt(min), Integer.parseInt(max));
			 model.addAttribute("cart", cart);
			 return SALESN;
		 
   }
    
    @GetMapping(value="datesearch")
	 public String searchOrdersBetweenDates(ModelMap model,@RequestParam(name="min_date") String mindate,@RequestParam(name="max_date") String maxdate) throws ParseException{
    	Date format = new SimpleDateFormat("yyyy-MM-dd").parse(mindate);
    	Date format1 = new SimpleDateFormat("yyyy-MM-dd").parse(maxdate);
			List<MyCartOrder> cart = mycartOrderService.searchOrdersBetweenDates(format,format1);
			 model.addAttribute("cart", cart);
			 return SALESN;
		 
  }

	 @RequestMapping(value="/editproduct/{productid}")  
	    public ModelAndView edit(@PathVariable int productid){  
			ModelAndView model = new ModelAndView();

	       Product product=productService.findById(productid);
	       model.addObject(POSTFORM, product);
			model.setViewName("editproduct");

			return model;
	        
	        
	    } 
	 
	
	 @PostMapping(value="/editsavep")  
	    public ModelAndView editsave(@ModelAttribute("PostForm") ProductVO productVO, Model model, BindingResult bindingResult){
    		Product prod=ProductVoHelper.getInstance().parseProductVoToEntity(productVO);
	    	productService.saveMyProduct(prod); 
	        return new ModelAndView(REDIRECTTOPRODUCTLIST);  
	    }  

		/* It deletes record for the given id and redirects to /productslist */  
	    @GetMapping(value="/deleteproduct/{productid}")  
	    public ModelAndView delete(@PathVariable int productid){ 
	    	Product p = productService.findById(productid);
	    	productService.delete(p);  
	        return new ModelAndView(REDIRECTTOPRODUCTLIST);  
	    }  
	    
		/* It deletes all records in product table and redirects to /p */
	    @GetMapping(value="/delete")  
	    public ModelAndView delete(){  
	    	productService.deleteAll();  
	        return new ModelAndView("redirect:/p");  
	    }  
   
    
	
}