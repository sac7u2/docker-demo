package com.delta.dockerdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DeltaController {

	@GetMapping("get")
	public String get() {
		return "SUCCESS";
	}
}
