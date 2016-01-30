package com.btx.Process;

import com.btx.Bean.ContactHomeBean;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.filter.HTTPBasicAuthFilter;
import com.sun.jersey.core.util.MultivaluedMapImpl;

public class EmailProcess {
	
	//----Method is user to send verification code to newly registered users
	public static ClientResponse SendVerificationCode(String vco, String email,
			String path) {
		Client client = Client.create();
		client.addFilter(new HTTPBasicAuthFilter("api",
				"key-de7b4217e230468a641b7e6ecd1bce5b"));
		WebResource webResource = client
				.resource("https://api.mailgun.net/v3/sandboxbdc50af29fe346df9c9983e8119db61f.mailgun.org/messages");

		MultivaluedMapImpl formData = new MultivaluedMapImpl();
		formData.add("from", "Support team <support@btx.com>");
		formData.add("to", email);
		formData.add("subject", "Btx verification");
		formData.add("html", "Click this link for verification <br><a href=\""
				+ path + "?acode="+ vco
				+ "\" >Click to Activate your account</a>");
		return (ClientResponse) webResource.type(
				"application/x-www-form-urlencoded").post(ClientResponse.class,
				formData);
	}

	//-----Method is used to send the referral link
	public static ClientResponse SendReferralLink(String rcode, String email,
			String path) {
		Client client = Client.create();
		client.addFilter(new HTTPBasicAuthFilter("api",
				"key-de7b4217e230468a641b7e6ecd1bce5b"));
		WebResource webResource = client
				.resource("https://api.mailgun.net/v3/sandboxbdc50af29fe346df9c9983e8119db61f.mailgun.org/messages");

		MultivaluedMapImpl formData = new MultivaluedMapImpl();
		formData.add("from", "Support team <support@btx.com>");
		formData.add("to", email);
		formData.add("subject", "Btx Referral Link");
		formData.add("html", "Click this link for Registration <br><a href=\""
				+ path + "?r="+ rcode
				+ "\" >Click to Register a new account</a>");
		return (ClientResponse) webResource.type(
				"application/x-www-form-urlencoded").post(ClientResponse.class,
				formData);
	}
	
	//---This method is used to send the forget password link to users
	public static ClientResponse SendForgetPasswordLink(String rcode, String email,
			String path) {
		Client client = Client.create();
		client.addFilter(new HTTPBasicAuthFilter("api",
				"key-de7b4217e230468a641b7e6ecd1bce5b"));
		WebResource webResource = client
				.resource("https://api.mailgun.net/v3/sandboxbdc50af29fe346df9c9983e8119db61f.mailgun.org/messages");

		MultivaluedMapImpl formData = new MultivaluedMapImpl();
		formData.add("from", "Support team <support@btx.com>");
		formData.add("to", email);
		formData.add("subject", "Btx Forget Password Link");
		formData.add("html", "Click this link for Reset Password <br><a href=\""
				+ path + "?r="+ rcode
				+ "\" >Click to Reset Password</a>");
		return (ClientResponse) webResource.type(
				"application/x-www-form-urlencoded").post(ClientResponse.class,
				formData);
	}
	
	
	//----This method id used to send the mail for Contact Support page in Landing page
	public static ClientResponse SendContactSupportMail(ContactHomeBean c,String email) {
		Client client = Client.create();
		client.addFilter(new HTTPBasicAuthFilter("api",
				"key-de7b4217e230468a641b7e6ecd1bce5b"));
		WebResource webResource = client
				.resource("https://api.mailgun.net/v3/sandboxbdc50af29fe346df9c9983e8119db61f.mailgun.org/messages");

		MultivaluedMapImpl formData = new MultivaluedMapImpl();
		formData.add("from", "General Contact Support Mail <support@btx.com>");
		formData.add("to", email);
		formData.add("subject", "Contact Support");
		formData.add("html", "Title: "+c.getTitle()+"<br>"
				+"FirstName: "+c.getFname()+"<br>"
				+"LastName: "+c.getLname()+"<br>"
				+"Email: "+c.getEmail()+"<br>"
				+"Country: "+c.getCountry()+"<br>"
				+"Phone Number: "+c.getPcode()+" "+c.getPno()+"<br>"
				+"Message:<br><br>"+c.getMessage()+"<br>"
				
				);
		return (ClientResponse) webResource.type(
				"application/x-www-form-urlencoded").post(ClientResponse.class,
				formData);
	}
}