/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.27
 * Generated at: 2018-01-25 16:19:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=EUC-KR\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/mystyle.css\"/>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<header>\r\n");
      out.write("\t\t\t<h1>\r\n");
      out.write("\t\t\t<img src=\"./media/images,shop.png\" width=\"50\" height=\"50\"/><a href=\"index.jsp\">Web Shop</a>\r\n");
      out.write("\t\t\t</h1>\r\n");
      out.write("\t\t</header>\r\n");
      out.write("\t\t<nav>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li><a href=\"index.jsp\">Home</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"About us.jsp\">About us</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"Discount Sale.jsp\">Discount Sale</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"My Account.jsp\">My Account</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"Contacts.jsp\">Contacts</a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</nav>\r\n");
      out.write("\t\t<aside id=\"left\">\r\n");
      out.write("\t\t\t<h4>카테고리</h4>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li><a target=\"iframe1\" href=\"computer.jsp\">컴퓨터</a></li>\r\n");
      out.write("\t\t\t\t<li><a target=\"iframe1\" href=\"clothings.jsp\">의류</a></li>\r\n");
      out.write("\t\t\t\t<li><a target=\"iframe1\" href=\"music.jsp\">음악</a></li>\r\n");
      out.write("\t\t\t\t<li><a target=\"iframe1\" href=\"movie.jsp\">영화</a></li>\r\n");
      out.write("\t\t\t\t<li><a target=\"iframe1\" href=\"sports_leisure.jsp\">스포츠/레저</a></li>\r\n");
      out.write("\t\t\t\t<li><a target=\"iframe1\" href=\"furniture_interior.jsp\">가구/인테리어</a></li>\r\n");
      out.write("\t\t\t\t<li><a target=\"iframe1\" href=\"foods.jsp\">식품</a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</aside>\r\n");
      out.write("\t\t<section id=\"main\">\r\n");
      out.write("\t\t\t<article id=\"article1\">\r\n");
      out.write("\t\t\t\t<iframe name=\"iframe1\" src=\"computer.jsp\" width=\"440\" height=\"300\" seamless></iframe>\r\n");
      out.write("\t\t\t</article>\r\n");
      out.write("\t\t</section>\r\n");
      out.write("\t\t<aside id=\"right\">\r\n");
      out.write("\t\t\t<div id=\"shopcart\">\r\n");
      out.write("\t\t\t\t<h4>Shopping Cart</h4>\r\n");
      out.write("\t\t\t\t<br/>\r\n");
      out.write("\t\t\t\t<a href=\"shopcart.jsp\">쇼핑카트 보기</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div id=\"login\">\r\n");
      out.write("\t\t\t\t<h4>Log In<h4>\r\n");
      out.write("\t\t\t\t<br/>\r\n");
      out.write("\t\t\t\t<a href=\"login.jsp\" target=\"_blank\" id=\"login\">로그인</a>\r\n");
      out.write("\t\t\t\t<br/>\r\n");
      out.write("\t\t\t\t<a href=\"register.jsp\" target=\"_blank\" id=\"register\">회원가입</a>\r\n");
      out.write("\t\t\t\t<br/>\r\n");
      out.write("\t\t\t\t<a href=\"forgetpwd.jsp\" id=\"forgot\">비밀번호분실</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</aside>\r\n");
      out.write("\t\t<footer>Copyright (c) 2018 Web Shop</footer>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
