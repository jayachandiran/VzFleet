 package com.javatpoint;
import javax.servlet.*;
import java.sql.*;

public class MyListener implements ServletContextListener{

	public void contextInitialized(ServletContextEvent arg0) {
		 
		Connection con=null;
	try{
		
		//Class.forName("com.mysql.jdbc.Driver");
		Class.forName("com.mysql.jdbc.Driver");
		//con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Saran","root","");
		con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Saran","root","");
		if(con!=null)
		{
		System.out.println("Created");
		
		//PreparedStatement ps2= con.prepareStatement("CREATE SEQUENCE JAVATPOINT MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE");
		//ps2.executeUpdate();
		
/*		//PreparedStatement ps4=con.prepareStatement("CREATE TABLE PAYREGISTER(ID NUMBER,USERNAME VARCHAR2(4000), USERPASS VARCHAR2(4000), BRANCH VARCHAR2(4000),DATEOFJOINING VARCHAR2(4000), DATEOFBIRTH VARCHAR2(4000), SALARY VARCHAR2(4000),CONSTRAINT PAYREGISTER_PK PRIMARY KEY (ID) ENABLE)");
		PreparedStatement ps4=con.prepareStatement("CREATE TABLE Saran.PAYREGISTER(TRUCKID Integer(10),USERNAME VARCHAR(4000), USERPASS VARCHAR(4000), BRANCH VARCHAR(4000),DATEOFJOINING VARCHAR(4000), DATEOFBIRTH VARCHAR(4000), SALARY VARCHAR(4000),CONSTRAINT PAYREGISTER_PK PRIMARY KEY (TRUCKID));");
		ps4.executeUpdate();		
			
		
		//ps4= con.prepareStatement("CREATE TABLE  TINSTALL(ID NUMBER,TMODEL VARCHAR2(4000), TNO VARCHAR2(4000), INSURANCE VARCHAR2(4000),INAME VARCHAR2(4000), MALIK VARCHAR2(4000),TFROM VARCHAR2(4000), TTO VARCHAR2(4000), IDATE DATE, MOBILE NUMBER,STATUS VARCHAR2(4000),CONSTRAINT TINSTALL_PK PRIMARY KEY (ID) ENABLE)");
		ps4= con.prepareStatement("CREATE TABLE  Saran.TINSTALL(TRUCKID Integer(10),TMODEL VARCHAR(4000), TNO VARCHAR(4000),INSURANCE VARCHAR(4000),INAME VARCHAR(4000), MALIK VARCHAR(4000),TFROM VARCHAR(4000), TTO VARCHAR(4000),IDATE DATE, MOBILE Integer(10),STATUS VARCHAR(4000),CONSTRAINT TINSTALL_PK PRIMARY KEY (TRUCKID));");
		ps4.executeUpdate();
		
		//ps4= con.prepareStatement("CREATE TABLE  QUIZCONTACT(NAME VARCHAR2(4000),EMAIL VARCHAR2(4000),PHONE NUMBER NOT NULL ENABLE, MESSAGE VARCHAR2(4000))");
		ps4= con.prepareStatement("CREATE TABLE  Saran.QUIZCONTACT(NAME VARCHAR(4000),EMAIL VARCHAR(4000),PHONE integer(10) NOT NULL, MESSAGE VARCHAR(4000));");
		ps4.executeUpdate();
*/		
		
		
		//Statement stmt=con.createStatement();
		//stmt.executeUpdate("CREATE TRIGGER  BI_PAYREGISTER before insert on PAYREGISTER for each row begin select JAVATPOINT.nextval into :NEW.ID from dual;end");
		//stmt.executeUpdate("CREATE TRIGGER  BI_TINSTALL before insert on TINSTALL for each row begin select JAVATPOINT.nextval into :NEW.ID from dual;end");
		}	
	}
		
	    catch(Exception e){
	    	e.printStackTrace();
	    	
	    }
	    }
	    
	    public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("project undeployed");
		
	}
}
