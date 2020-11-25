package com.example.finalpro.controller;

import com.example.finalpro.service.LoginService;
import com.example.finalpro.vo.EnterpriseMemberVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class homeController {

    @Autowired
    LoginService loginService;

    @RequestMapping("/")
    public String template(Model model) {

        model.addAttribute("main", "power");

        return "template";
    }

    @RequestMapping("/member")
    public @ResponseBody
    List<EnterpriseMemberVo> selectListEnterpriseMember(
            @ModelAttribute("searchVO") EnterpriseMemberVo enterpriseMemberVo, ModelMap medel) throws Exception {
        List<EnterpriseMemberVo> eList = loginService.selectListEnterpriseMember(enterpriseMemberVo);

        return eList;
    }
}
