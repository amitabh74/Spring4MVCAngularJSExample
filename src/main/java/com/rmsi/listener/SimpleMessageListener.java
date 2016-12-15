package com.rmsi.listener;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

public class SimpleMessageListener implements MessageListener{

	public void onMessage(Message message){
		try{
			TextMessage txtMsg = (TextMessage)message;
			System.out.println(txtMsg.getText());
		}catch(JMSException jmsEx){
			jmsEx.printStackTrace();
		}
	}
}
