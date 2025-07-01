package com.api.authentication.utils;

import com.api.commons.models.enums.CodeEnum;

public interface Messenger {

    String getMessage (CodeEnum code);

    String getMessage(CodeEnum code, Object... args);
}
