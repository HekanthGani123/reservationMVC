package mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/reservation")
@Controller
public class ReservationController {
	
	@GetMapping("/bookingForm")
	public String bookingForm(Model model) {
		System.out.println(":Reservation");
		// create a reservation object
		Reservation res = new Reservation();
		// provide reservation object to the model
		model.addAttribute("railway", res);
		return "reservation-page";
	}

	@RequestMapping("/submitForm")
// @ModelAttribute binds form data to the object  
	public String submitForm( @ModelAttribute("railway") Reservation res) {
		System.out.println(res.getFirstName());
		System.out.println(res.getLastName());
		return "confirmation-form";
	}
}
