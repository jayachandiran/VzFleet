package com.javatpoint;


import org.junit.*;
import static org.junit.Assert.assertEquals;

public class TestJunit {
	
   String message = "VERIZON VFLEET";	
   MessageUtil messageUtil = new MessageUtil(message);

   @Test
   public void testPrintMessage() {	  
      assertEquals(message,messageUtil.printMessage());
   }
}
