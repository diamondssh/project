package com.ch.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HealthScreeningController {
	@RequestMapping("hchk")
	public String healthScreeningMain() {
		return "healthScreening/hchk";
	}
}
