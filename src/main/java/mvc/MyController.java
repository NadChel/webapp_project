package mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
    @RequestMapping("/")
    public String showFirstVew() {
        return "firstView";
    }
//    @RequestMapping("/askDetails")
//    public String askEmpDetails() {
//        return "askEmpDetailsView";
//    }
    @RequestMapping("/askDetails")
    public String askEmpDetails(Model model) {
        model.addAttribute("employee", new Employee());
        return "askEmpDetailsView";
    }
// ************************************************************************************
// ************************************************************************************
//    @RequestMapping("/showDetails")
//    public String showEmpDetails() {
//        return "showEmpDetailsView";
//    }
//*************************************************************************************
//    @RequestMapping("/showDetails")
//    public String showEmpDetails(HttpServletRequest request, Model model) {
//        String name = request.getParameter("employeeName");
//        name = "Mr. " + Character.toUpperCase(name.charAt(0)) + name.substring(1);
//        model.addAttribute("nameAttribute", name);
//        return "showEmpDetailsView";
//    }
// ************************************************************************************
//    @RequestMapping("/showDetails")
//    public String showEmpDetails(@RequestParam("employeeName") String name, Model model) {
//        name = "Mr. " + Character.toUpperCase(name.charAt(0)) + name.substring(1);
//        model.addAttribute("nameAttribute", name);
//        return "showEmpDetailsView";
//    }
// *************************************************************************************
    @RequestMapping("/showDetails")
    public String showEmpDetails(@ModelAttribute("employee") Employee employee) {
        return "showEmpDetailsView";
    }
}
