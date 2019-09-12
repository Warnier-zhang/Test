package org.warnier.zhang.test.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.warnier.zhang.cip.util.StringUtils;

@RestController
@RequestMapping("/test")
public class TestController {
    @GetMapping("/md5")
    public String encryptText(String text) {
        return "MD5: " + StringUtils.md5(text);
    }
}
