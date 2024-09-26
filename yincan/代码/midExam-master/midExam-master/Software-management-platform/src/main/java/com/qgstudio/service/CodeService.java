package com.qgstudio.service;

import com.qgstudio.controller.Result;
import com.qgstudio.po.Code;
import com.qgstudio.po.License;

import java.util.List;

public interface CodeService {

    Result<Code> save (Code code) throws Exception;



    Result<Code> update (Code code) throws Exception;


    Result<List<Code>>  getAll(int license_id);

}
