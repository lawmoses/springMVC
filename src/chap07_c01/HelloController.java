package chap07_c01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	
	@RequestMapping ("/index.do")
	public String index (HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		return "/index";
	}
		
	
	@RequestMapping ("/hello.do")
	public String hello (Model model) {
		model.addAttribute("greeting", "안녕하세요");
		return "hello";
	}
	
	@RequestMapping("/hello-raw.do") 
	public void hello (HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("EUC-KR");
		PrintWriter writer = response.getWriter();
		writer.write("안녕하세요."+"/n");
		writer.write("우리는 봄날씨에에 Spring MVC를 배우고 있습니다.");
		writer.flush();
	}
	
	@RequestMapping("/hello.do2") 
	public HelloController helloController() {
		return new HelloController();
	}
	
	
}
