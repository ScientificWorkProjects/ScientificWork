package com.dss.controller;

import com.dss.dto.AllUserInfo;
import com.dss.dto.UserForm;
import com.dss.service.UserFormService;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import javax.inject.Inject;

@Controller
@RequestMapping("/info")
public class UserFormController {

    @Inject
    UserFormService service;

    @RequestMapping("/data")
    @ResponseBody
    @ResponseStatus(HttpStatus.OK)
    boolean getUserInfo(@RequestBody AllUserInfo info){
        return service.addForm(toResponse(info));
    }

    private UserForm toResponse(AllUserInfo info) {
       return null;  //To change body of created methods use File | Settings | File Templates.
    }


}
