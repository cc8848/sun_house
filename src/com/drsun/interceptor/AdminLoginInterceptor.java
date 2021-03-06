package com.drsun.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class AdminLoginInterceptor implements Interceptor {
	private static final long serialVersionUID = 1L;
	@Override
	public void destroy() {
		

	}

	@Override
	public void init() {
		

	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> sessionAttributes = invocation
				.getInvocationContext().getSession();

		if (sessionAttributes == null
				|| sessionAttributes.get("adminloginId") == null) {
			return "login";
		} else {
			if (!((String) sessionAttributes.get("adminloginId")).equals(null)) {
				return invocation.invoke();
			} else {
				return "login";
			}
		}

	}

}
