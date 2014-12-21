package com.mumu.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.feihuwang.constants.Constants;

/**
 * Servlet implementation class PublicServlet
 */
public class PublicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static Log log = LogFactory.getLog(PublicServlet.class); 
	private static String plat = Constants.PLAT_MAP.get("0");
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
		String urlFlag = request.getParameter("urlFlag");//key_url 0跳转到其他页面 urlName:1KEY_CHANNEL_ALL2KEY_CHANNEL_CONTENT3KEY_CONTENT_DETAIL
		String level = request.getParameter("level");
		//request.setAttribute("level", "0");
		//key_url:KEY_CHANNEL_CONTENT KEY_CHANNEL_ALL
		String dispaUrl = "";
		if("1".equals(urlFlag))
		{
			urlFlag = "KEY_CHANNEL_LIST";
			dispaUrl = "path?"+
					Constants.KEY_URL+"="+urlFlag+
					"&"+Constants.PLAT+
					"="+plat+
					"&level="+level+
					"&debug=";
		}else if("2".equals(urlFlag))
		{
			String channelId = request.getParameter("channelId");
			urlFlag = "KEY_CHANNEL_CONTENT";
			dispaUrl = "path?"+
					Constants.KEY_URL+"="+urlFlag+
					"&"+Constants.PLAT+
					"="+plat+
					"&level="+level+
					(channelId!=null?"&channel_id="+channelId:"")+
					"&debug=";
		}else if("3".equals(urlFlag))
		{
			urlFlag = "KEY_CONTENT_DETAIL";
			String content_Id = request.getParameter("content_Id");
			dispaUrl = "path?"+
					Constants.KEY_URL+"="+urlFlag+
					"&"+Constants.PLAT+
					"="+plat+
					"&content_id="+content_Id+
					"&debug=";
		}else if("0".equals(urlFlag))
		{
			String contetId = request.getParameter("contetId");
			if(StringUtils.isNotBlank(contetId))
			{
				dispaUrl = "/mumu/article/article.jsp";
			}
		}else if("4".equals(urlFlag))
		{//注册
			urlFlag = "KEY_USER_REGISTER";
			String user_name = request.getParameter("userName");
			String passport = request.getParameter("passWord");
			dispaUrl = "path?"+
					Constants.KEY_URL+"="+urlFlag+
					"&"+Constants.PLAT+
					"="+plat+
					"&user_name="+user_name+
					"&passport="+passport+
					"&debug=";
		}else if("5".equals(urlFlag))
		{//登陆
			urlFlag = "KEY_USER_LOGIN";
			String user_name = request.getParameter("userName");
			String passport = request.getParameter("passWord");
			dispaUrl = "path?"+
					Constants.KEY_URL+"="+urlFlag+
					"&"+Constants.PLAT+
					"="+plat+
					"&user_name="+user_name+
					"&passport="+passport+
					"&debug=";
		}
		request.getRequestDispatcher(dispaUrl).forward(request, response);
	}

}
