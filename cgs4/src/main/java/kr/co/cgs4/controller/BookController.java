package kr.co.cgs4.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.cgs4.HomeController;
import kr.co.cgs4.dao.BookDAO;
import kr.co.cgs4.dao.FilmDAO;
import kr.co.cgs4.dto.FilmDTO;
import kr.co.cgs4.util.BookInfo;
import kr.co.cgs4.util.ScreeningInfo;

@Controller
public class BookController {
	
//	@RequestMapping("/book1")
//	public String book1(Model model) {
//	System.out.println("book1()");
//	FilmDAO fdao = new FilmDAO();
////	BookDAO bdao = new BookDAO();
//	ArrayList<FilmDTO> fdto = fdao.film_list();
////	ArrayList<ScreeningInfo> bdto = bdao.screening_date();
//	model.addAttribute("flist", fdto);
////	model.addAttribute("blist", bdto);
//	
//	return "book/book1";
//	}
	
	@RequestMapping("/book1")
	public String book1(Model model, HttpServletRequest hsr) {
	System.out.println("book11()");
	BookDAO bdao = new BookDAO();
	if(hsr.getParameter("film_name")!=null){
		String film_name = hsr.getParameter("film_name");
		String site_name = hsr.getParameter("site_name");
		String screening_date = hsr.getParameter("screening_date");
		ArrayList<ScreeningInfo> bdto = bdao.screening_date(film_name, site_name, screening_date);
		model.addAttribute("blist", bdto);
	}
	ArrayList<FilmDTO> fdto = bdao.film_list();
	model.addAttribute("flist", fdto);
	
	return "book/book1";
	}
//	System.out.println("list()");
//	FilmDAO dao = new FilmDAO();
//	ArrayList<FilmDTO> dtos = dao.film_list();
//	model.addAttribute("list", dtos);
//	return "list";
	@RequestMapping("/book2")
	public String book2(@ModelAttribute("bInfo") BookInfo bookinfo){	
	return "book/book2";
	}
	//서블릿 리퀘스트 써서 하나하나 받는 법.
//	public String book2(HttpServletRequest hsr, Model model) {
//	System.out.println("book2()");
//	BookInfo bInfo = new BookInfo();
//	bInfo.setFilm_name(hsr.getParameter("film_name"));
//	bInfo.setSite_name(hsr.getParameter("site_name"));
//	bInfo.setScreening_date(hsr.getParameter("screening_date"));
//	bInfo.setScreen_num(hsr.getParameter("screen_num"));
//	bInfo.setStart_time(hsr.getParameter("start_time"));
//	System.out.println(hsr.getParameter("film_name"));
//	System.out.println(hsr.getParameter("site_name"));
//	model.addAttribute("bInfo", bInfo);
	
	
}
