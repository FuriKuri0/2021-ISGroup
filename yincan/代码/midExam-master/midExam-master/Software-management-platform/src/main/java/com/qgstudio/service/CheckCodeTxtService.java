package com.qgstudio.service;

import com.qgstudio.controller.Result;
import com.qgstudio.po.CodedText;

public interface CheckCodeTxtService {


    Result<Integer> checkCodeTxt(CodedText codedText);
}
