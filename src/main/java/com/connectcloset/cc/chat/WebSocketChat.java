package com.connectcloset.cc.chat;

import java.util.ArrayList;
import java.util.List;

import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.RemoteEndpoint.Basic;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@ServerEndpoint(value = "/chat.do")
public class WebSocketChat {

	private static final List<Session> sessionList = new ArrayList<Session>();
	private static final Logger logger = LoggerFactory.getLogger(WebSocketChat.class);

	public WebSocketChat() {

		System.out.println("웹소켓(서버) 객체생성");
	}

	@RequestMapping(value = "/chat.do")
	public ModelAndView getChatViewPage(ModelAndView mav) {
		mav.setViewName("caht");
		return mav;
	}

	@OnOpen
	public void onOpen(Session session) {
		logger.info("Open session id:" + session.getId());

		try {
			final Basic basic = session.getBasicRemote();
			basic.sendText("Connection Established");
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		sessionList.add(session);
	}

	/*
	 * 
	 * 모든 사용자에게 메세지 전달
	 */
	private void sendAllSessionToMessage(Session self, String message) {
		try {
			for (Session session : WebSocketChat.sessionList) {
				if (!self.getId().equals(session.getId())) {
					session.getBasicRemote().sendText(message);
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
	}

	@OnMessage
	public void onMessage(String message, Session session) {
		logger.info("Message From ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ");
		try {
			final Basic basic = session.getBasicRemote();
			basic.sendText("이용자 아이디 : " + message);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		sendAllSessionToMessage(session, message);
	}

	@OnError
	public void onError(Throwable e, Session session) {

	}

	public void onClose(Session session) {
		logger.info("Sessionㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ" + session.getId() + " has ended");
		sessionList.remove(session);
	}

}
