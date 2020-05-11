package com.test.jsp;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class GoogleAuthentication extends Authenticator {
		PasswordAuthentication passAuth; //자바.x로 생성해줘야함.
		
		public GoogleAuthentication() {
			passAuth = new PasswordAuthentication("shjaewon.dev", "ndtr ctfj eqsb inoz");
		}
		
		public PasswordAuthentication getPassAuth() {
			return passAuth;
		}
}
