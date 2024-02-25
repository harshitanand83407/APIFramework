package stepDefinations;

import java.io.IOException;

import io.cucumber.java.Before;

public class Hooks {
	
	@Before("@DeletePlace")
	
		public void beforeScenerio() throws IOException
		{
			//write a code that will you place id
		    //write a code that will give you plaace id
		
		stepDefination m = new stepDefination();
		if(m.place_id==null)
		{
		m.add_place_payload_with("Monu", "Hindi","Gaya");
		m.user_calls_with_http_request("AddPlaceAPI", "POST");
		m.verify_place_id_created_maps_to_using("Monu", "getPlaceAPI");
		}
		}
}

