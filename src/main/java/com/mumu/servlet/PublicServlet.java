package com.mumu.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.feihuwang.constants.Constants;

/**
 * Servlet implementation class PublicServlet
 */
public class PublicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static Log log = LogFactory.getLog(PublicServlet.class); 
	private static String plat = Constants.PLAT_MAP.get("0");//pc��
	private static Map<String, String> KEY_MAP = Constants.KEY_MAP; 
   	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String urlFlag = request.getParameter("urlFlag");//key_url urlName:1��ʾKEY_CHANNEL_ALL��2��ʾKEY_CHANNEL_CONTENT
		String level = request.getParameter("level");
		String channelId = request.getParameter("channelId");
		//request.setAttribute("level", "0");
		//��ȡ������Ŀ�ӿڣ�Ŀǰֻ֧��1��2����Ŀ��ȡ������ȡ������Ŀ��level����0����level�����level > 2��ʲô�����᷵��
		//level����0��ȫ����Ĭ�ϣ�1��1����Ŀ��2��2����Ŀ
		//key_url:KEY_CHANNEL_CONTENT KEY_CHANNEL_ALL
		if("1".equals(urlFlag))
		{
			urlFlag = "KEY_CHANNEL_ALL";
			channelId = null;
		}else if("2".equals(urlFlag))
		{
			urlFlag = "KEY_CHANNEL_CONTENT";
		}
		String dispaUrl = "path?"+
		Constants.KEY_URL+"="+urlFlag+
		"&"+Constants.PLAT+
		"="+plat+
		"&level="+level+
		(channelId!=null?"&channel_id="+channelId:"")+
		"&debug=";
		request.getRequestDispatcher(dispaUrl).forward(request, response);
	}

}
