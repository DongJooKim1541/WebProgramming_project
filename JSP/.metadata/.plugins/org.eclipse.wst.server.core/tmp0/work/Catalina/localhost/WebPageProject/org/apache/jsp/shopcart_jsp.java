/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.27
 * Generated at: 2018-01-28 03:45:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class shopcart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>Shopcart</title>\r\n");
      out.write("<style>\r\n");
      out.write("\tbody{\r\n");
      out.write("\t\theight: 100%;\r\n");
      out.write("\t\tbackground-color: #F3F1E9;\r\n");
      out.write("\t}\r\n");
      out.write("\ttable{\r\n");
      out.write("\t\twidth: 100%;\r\n");
      out.write("\t\tborder-collapse: collapse;\r\n");
      out.write("\t\ttext-align: center;\r\n");
      out.write("\t}\r\n");
      out.write("\ttable caption{\r\n");
      out.write("\t\tcolor: red;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"countCom(); countClothes(); countAlbum(); countMovie(); countS_l(); countF_i(); countFood();\">\r\n");
      out.write("\t");
 
	// 한글 깨짐을 방지하기 위한 인코딩 처리
    request.setCharacterEncoding("euc-kr");
	// getParameter()를 이용해 넘겨진 파라미터 값을 얻어올 수 있다.
    // 파라미터 값을 얻을때 name= 에 지정해둔 값과 동일한 값을 인자로 지정해야 된다.
    String com = request.getParameter("computer");
    String clothes = request.getParameter("clothes");
    String album = request.getParameter("album");
    String movie = request.getParameter("movie");
    String s_l = request.getParameter("s_l");
    String f_i = request.getParameter("f_i");
    String food = request.getParameter("food");
	
      out.write("\r\n");
      out.write("\t<table border=\"1\">\r\n");
      out.write("\t\t<caption>Shopping Cart</caption>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t<th>품목</th>\r\n");
      out.write("\t\t<th>수량</th>\r\n");
      out.write("\t\t<th>합계</th>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t<td>컴퓨터</td>\r\n");
      out.write("\t\t<td><input type=\"number\" id=\"com1\" value=0 onclick=\"func1()\"></td>\r\n");
      out.write("\t\t<td><input type=\"text\" size=\"6\" id=\"com2\" value=\"0\"></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t<td>의류</td>\r\n");
      out.write("\t\t<td><input type=\"number\" id=\"clothes1\" min=0 step=1 value=0 onclick=\"func2()\"></td>\r\n");
      out.write("\t\t<td><input type=\"text\" size=\"6\" id=\"clothes2\" value=\"0\"></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t<td>음악</td>\r\n");
      out.write("\t\t<td><input type=\"number\" id=\"music1\" min=0 step=1 value=0 onclick=\"func3()\"></td>\r\n");
      out.write("\t\t<td><input type=\"text\" size=\"6\" id=\"music2\" value=\"0\"></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<td>앨범</td>\r\n");
      out.write("\t\t<td><input type=\"number\" id=\"album1\" min=0 step=1 value=0 onclick=\"func4()\"></td>\r\n");
      out.write("\t\t<td><input type=\"text\" size=\"6\" id=\"album2\" value=\"0\"></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t<td>영화</td>\r\n");
      out.write("\t\t<td><input type=\"number\" id=\"movie1\" min=0 step=1 value=0 onclick=\"func5()\"></td>\r\n");
      out.write("\t\t<td><input type=\"text\" size=\"6\" id=\"movie2\" value=\"0\"></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t<td>스포츠/레저</td>\r\n");
      out.write("\t\t<td><input type=\"number\" id=\"s_l1\" min=0 step=1 value=0 onclick=\"func6()\"></td>\r\n");
      out.write("\t\t<td><input type=\"text\" size=\"6\" id=\"s_l2\" value=\"0\"></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t<td>가구/인테리어</td>\r\n");
      out.write("\t\t<td><input type=\"number\" id=\"f_i1\" min=0 step=1 value=0 onclick=\"func7()\"></td>\r\n");
      out.write("\t\t<td><input type=\"text\" size=\"6\" id=\"f_i2\" value=\"0\"></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t<td>식품</td>\r\n");
      out.write("\t\t<td><input type=\"number\" id=\"food1\" min=0 step=1 value=0 onclick=\"func8()\"></td>\r\n");
      out.write("\t\t<td><input type=\"text\" size=\"6\" id=\"food2\" value=\"0\"></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("\t<input type=\"button\" value=\"계산\" onclick=\"calculate()\"/>\r\n");
      out.write("\t<input type=\"submit\" value=\"구매\" onclick=\"purchase()\"/>\r\n");
      out.write("\t<input type=\"reset\" value=\"초기화\" onclick=\"reset()\"/>\r\n");
      out.write("\t<footer>\r\n");
      out.write("\t<br/>\r\n");
      out.write("\t<a href=\"index.jsp\">Back to Home</a>\r\n");
      out.write("\t<br/>\r\n");
      out.write("\tCopyright (c) 2018 Web Shop\r\n");
      out.write("\t</footer>\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\tfunction countCom(){\r\n");
      out.write("\t\t\tvar comCount;\r\n");
      out.write("\t\t\tvar param='");
      out.print(com);
      out.write("';\r\n");
      out.write("\t\t\tif(param==\"null\"){\r\n");
      out.write("\t\t\t\tcomCount=0;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse{\r\n");
      out.write("\t\t\t\tcomCount=1;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tdocument.getElementById(\"com1\").value=comCount;\r\n");
      out.write("\t\t\tdocument.getElementById(\"com2\").value=comCount*1200000;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tfunction countClothes(){\r\n");
      out.write("\t\t\tvar clothesCount;\r\n");
      out.write("\t\t\tvar param='");
      out.print(clothes);
      out.write("';\r\n");
      out.write("\t\t\tif(param==\"null\"){\r\n");
      out.write("\t\t\t\tclothesCount=0;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse{\r\n");
      out.write("\t\t\t\tclothesCount=1;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tdocument.getElementById(\"clothes1\").value=clothesCount;\r\n");
      out.write("\t\t\tdocument.getElementById(\"clothes2\").value=clothesCount*16000;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tfunction countAlbum(){\r\n");
      out.write("\t\t\tvar albumCount;\r\n");
      out.write("\t\t\tvar param='");
      out.print(album);
      out.write("';\r\n");
      out.write("\t\t\tif(param==\"null\"){\r\n");
      out.write("\t\t\t\talbumCount=0;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse{\r\n");
      out.write("\t\t\t\talbumCount=1;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tdocument.getElementById(\"album1\").value=albumCount;\r\n");
      out.write("\t\t\tdocument.getElementById(\"album2\").value=albumCount*18900;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tfunction countMovie(){\r\n");
      out.write("\t\t\tvar movieCount;\r\n");
      out.write("\t\t\tvar param='");
      out.print(movie);
      out.write("';\r\n");
      out.write("\t\t\tif(param==\"null\"){\r\n");
      out.write("\t\t\t\tmovieCount=0;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse{\r\n");
      out.write("\t\t\t\tmovieCount=1;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tdocument.getElementById(\"movie1\").value=movieCount;\r\n");
      out.write("\t\t\tdocument.getElementById(\"movie2\").value=movieCount*9000;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tfunction countS_l(){\r\n");
      out.write("\t\t\tvar s_lCount;\r\n");
      out.write("\t\t\tvar param='");
      out.print(s_l);
      out.write("';\r\n");
      out.write("\t\t\tif(param==\"null\"){\r\n");
      out.write("\t\t\t\ts_lCount=0;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse{\r\n");
      out.write("\t\t\t\ts_lCount=1;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tdocument.getElementById(\"s_l1\").value=s_lCount;\r\n");
      out.write("\t\t\tdocument.getElementById(\"s_l2\").value=s_lCount*6200000;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tfunction countF_i(){\r\n");
      out.write("\t\t\tvar f_iCount;\r\n");
      out.write("\t\t\tvar param='");
      out.print(f_i);
      out.write("';\r\n");
      out.write("\t\t\tif(param==\"null\"){\r\n");
      out.write("\t\t\t\tf_iCount=0;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse{\r\n");
      out.write("\t\t\t\tf_iCount=1;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tdocument.getElementById(\"f_i1\").value=f_iCount;\r\n");
      out.write("\t\t\tdocument.getElementById(\"f_i2\").value=f_iCount*200000;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tfunction countFood(){\r\n");
      out.write("\t\t\tvar foodCount;\r\n");
      out.write("\t\t\tvar param='");
      out.print(food);
      out.write("';\r\n");
      out.write("\t\t\tif(param==\"null\"){\r\n");
      out.write("\t\t\t\tfoodCount=0;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse{\r\n");
      out.write("\t\t\t\tfoodCount=1;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tdocument.getElementById(\"food1\").value=foodCount;\r\n");
      out.write("\t\t\tdocument.getElementById(\"food2\").value=foodCount*15000;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tvar count1;\r\n");
      out.write("\t\tfunction func1(){\r\n");
      out.write("\t\t\tif(document.getElementById(\"com1\").value>=0){\r\n");
      out.write("\t\t\t\tcount1=document.getElementById(\"com1\").value;\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"com2\").value=count1*1200000;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tvar count2;\r\n");
      out.write("\t\tfunction func2(){\r\n");
      out.write("\t\t\tif(document.getElementById(\"clothes1\").value>=0){\r\n");
      out.write("\t\t\t\tcount2=document.getElementById(\"clothes1\").value;\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"clothes2\").value=count2*16000;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tvar count3;\r\n");
      out.write("\t\tfunction func3(){\r\n");
      out.write("\t\t\tif(document.getElementById(\"music1\").value>=0){\r\n");
      out.write("\t\t\t\tcount3=document.getElementById(\"music1\").value;\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"music2\").value=count3*1000;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tvar count4;\r\n");
      out.write("\t\tfunction func4(){\r\n");
      out.write("\t\t\tif(document.getElementById(\"album1\").value>=0){\r\n");
      out.write("\t\t\t\tcount4=document.getElementById(\"album1\").value;\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"album2\").value=count4*18900;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tvar count5;\r\n");
      out.write("\t\tfunction func5(){\r\n");
      out.write("\t\t\tif(document.getElementById(\"movie1\").value>=0){\r\n");
      out.write("\t\t\t\tcount5=document.getElementById(\"movie1\").value;\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"movie2\").value=count5*9000;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tvar count6;\r\n");
      out.write("\t\tfunction func6(){\r\n");
      out.write("\t\t\tif(document.getElementById(\"s_l1\").value>=0){\r\n");
      out.write("\t\t\t\tcount6=document.getElementById(\"s_l1\").value;\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"s_l2\").value=count6*6200000;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tvar count7;\r\n");
      out.write("\t\tfunction func7(){\r\n");
      out.write("\t\t\tif(document.getElementById(\"f_i1\").value>=0){\r\n");
      out.write("\t\t\t\tcount7=document.getElementById(\"f_i1\").value;\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"f_i2\").value=count7*200000;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tvar count8;\r\n");
      out.write("\t\tfunction func8(){\r\n");
      out.write("\t\t\tif(document.getElementById(\"food1\").value>=0){\r\n");
      out.write("\t\t\t\tcount8=document.getElementById(\"food1\").value;\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"food2\").value=count8*15000;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tvar sum=0;\r\n");
      out.write("\t\tfunction calculate(){\r\n");
      out.write("\t\t\tsum=sum+parseInt(document.getElementById(\"com2\").value)+parseInt(document.getElementById(\"clothes2\").value)+parseInt(document.getElementById(\"music2\").value)+parseInt(document.getElementById(\"album2\").value)+parseInt(document.getElementById(\"movie2\").value)+parseInt(document.getElementById(\"s_l2\").value)+parseInt(document.getElementById(\"f_i2\").value)+parseInt(document.getElementById(\"food2\").value);\r\n");
      out.write("\t\t\talert(\"총 금액\"+sum+\"원\");\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tfunction purchase(){\r\n");
      out.write("\t\t\tif(count1>0 || count2>0 || count3>0 || count4>0 || count5>0 || count6>0 || count7>0 || count8>0){\r\n");
      out.write("\t\t\t\talert(\"구매 완료하였습니다.\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\telse{\r\n");
      out.write("\t\t\t\talert(\"구매하지 못하였습니다.\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tfunction reset(){\r\n");
      out.write("\t\t\tdocument.getElementById(\"com1\").value = \"0\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"com2\").value = \"0\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"clothes1\").value = \"0\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"clothes2\").value = \"0\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"music1\").value = \"0\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"music2\").value = \"0\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"album1\").value = \"0\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"album2\").value = \"0\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"movie1\").value = \"0\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"movie2\").value = \"0\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"s_l1\").value = \"0\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"s_l2\").value = \"0\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"f_i1\").value = \"0\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"f_i2\").value = \"0\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"food1\").value = \"0\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"food2\").value = \"0\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
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
