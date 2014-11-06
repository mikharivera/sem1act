
/*
 * MyCustomHandler.eq
 * This is a sample template for a Sympathy request handler.
 * Edit to suit your needs.
 */

public class FormHandler : HTTPRequestHandler
{
	String user;
	String pw;
	
	public void get(HTTPRequest req) {
		user = req.get_query_parameter("user");
		pw = req.get_query_parameter("pw");
		req.send_response(HTTPResponse.for_text_string(pw));
	}

	public void post(HTTPRequest req) {
		user = req.get_query_parameter("user");
		pw = req.get_query_parameter("pw");
		req.send_response(HTTPResponse.for_text_string(pw));
	}
	
}
