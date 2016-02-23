package com.btx.dao;

import com.btx.Bean.ContactHomeBean;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.filter.HTTPBasicAuthFilter;
import com.sun.jersey.core.util.MultivaluedMapImpl;

public class EmailDao {
	//----Method is user to send verification code to newly registered users
		synchronized public static ClientResponse SendVerificationCode(String vco, String email,
				String path) {
			Client client = Client.create();
			client.addFilter(new HTTPBasicAuthFilter("api",
					"key-de7b4217e230468a641b7e6ecd1bce5b"));
			WebResource webResource = client
					.resource("https://api.mailgun.net/v3/sandboxbdc50af29fe346df9c9983e8119db61f.mailgun.org/messages");

			MultivaluedMapImpl formData = new MultivaluedMapImpl();
			formData.add("from", "Support Team <support@binarytradeexchange.com>");
			formData.add("to", email);
			formData.add("subject", "BinaryTradeExchange - Account Activation - Email Verification");
			formData.add("html","<h2>Congratulations on joining Binary Trade Exchange</h2><p>We received your registration to join Binary Trade Exchange-A "
					+ "Revolution of Binary Option. Welcome to the launch of the most "
					+ "innovative Binary Option platform. It is the first of its kind in the "
					+ "world, a combination of Binary Option market and the exchange "
					+ "platform.</p>"
					+ "<p>As a token of appreciation, we are giving away 100 proven Binary "
					+ "Option strategies with some of it giving an amazing 95% strike rate "
					+ "totally free with no strings attached.</p>"
					+ "<p>We have many reasons why you should choose us comparing to "
					+ "traditional Binary Option brokers:</p>"
					+ "<ul>"
					+ "<li><b>90% maximum return in 60 seconds, highest payout in this industry.</b></li>"
					+ "<li><b>Trade till the final second.</b></li>"
					+ "<li><b>Peer to peer trading, Not against the brokers.</b></li>"
					+ "<li><b>We earn commission only when you win.</b></li>"
					+ "<li><b>48 hours withdrawal.</b></li>"
					+ "<li><b>100% encrypted data transfer and highest account security.</b></li>"
					+ "<li><b>Professional customer support available via live chat.</b></li>"
					+ "</ul>"
					+ "<p>We're excited to see what results we can create together with "
					+ "you in Binary Trade Exchange</p>"
					+ "<p>Please click the link below to activate your account:</p>"
					+ "<p>Click this link for verification</p>"
					+ "<p><a href=\""+ path + "?acode="+ vco+ "\" >Click to Activate your account</a></p>"
					+ "<p>With much appreciation,</p>"
					+ "<p>"
					+ "<h4>Mather Ray Vran</h4>"
					+ "</p>"
					+ "<p><h4>BTX Admin Head</h4></p>");
			return (ClientResponse) webResource.type(
					"application/x-www-form-urlencoded").post(ClientResponse.class,
					formData);
		}

		//-----Method is used to send the referral link
		synchronized public static ClientResponse SendReferralLink(String rcode, String email,
				String path) {
			Client client = Client.create();
			client.addFilter(new HTTPBasicAuthFilter("api",
					"key-de7b4217e230468a641b7e6ecd1bce5b"));
			WebResource webResource = client
					.resource("https://api.mailgun.net/v3/sandboxbdc50af29fe346df9c9983e8119db61f.mailgun.org/messages");

			MultivaluedMapImpl formData = new MultivaluedMapImpl();
			formData.add("from", "Support team <support@binarytradeexchange.com>");
			formData.add("to", email);
			formData.add("subject", "BinaryTradeExchange - Referral");
			formData.add("html", "Click this link for Registration <br><a href=\""
					+ path + "?r="+ rcode
					+ "\" >Click to Register a new account</a>");
			return (ClientResponse) webResource.type(
					"application/x-www-form-urlencoded").post(ClientResponse.class,
					formData);
		}
		
		//---This method is used to send the forget password link to users
		synchronized public static ClientResponse SendForgetPasswordLink(String rcode, String email,
				String path) {
			Client client = Client.create();
			client.addFilter(new HTTPBasicAuthFilter("api",
					"key-de7b4217e230468a641b7e6ecd1bce5b"));
			WebResource webResource = client
					.resource("https://api.mailgun.net/v3/sandboxbdc50af29fe346df9c9983e8119db61f.mailgun.org/messages");

			MultivaluedMapImpl formData = new MultivaluedMapImpl();
			formData.add("from", "Support team <support@binarytradeexchange.com>");
			formData.add("to", email);
			formData.add("subject", "BinaryTradeExchange - Forget Password");
			formData.add("html", "Click this link for Reset Password <br><a href=\""
					+ path + "?r="+ rcode
					+ "\" >Click to Reset Password</a>");
			return (ClientResponse) webResource.type(
					"application/x-www-form-urlencoded").post(ClientResponse.class,
					formData);
		}
		
		
		//----This method id used to send the mail for Contact Support page in Landing page
		synchronized public static ClientResponse SendContactSupportMail(ContactHomeBean c,String email) {
			Client client = Client.create();
			client.addFilter(new HTTPBasicAuthFilter("api",
					"key-de7b4217e230468a641b7e6ecd1bce5b"));
			WebResource webResource = client
					.resource("https://api.mailgun.net/v3/sandboxbdc50af29fe346df9c9983e8119db61f.mailgun.org/messages");

			MultivaluedMapImpl formData = new MultivaluedMapImpl();
			formData.add("from", "General Contact Support Mail <support@binarytradeexchange.com>");
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
