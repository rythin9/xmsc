package action;

import dao.GoodDao;
import dao.userDao;
import entity.GoShop;
import entity.Goods;
import entity.User;
import entity.page;
import util.sendMessageUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

public class XMSCserc extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter o = resp.getWriter();
        String uri = req.getRequestURI();
        userDao userdao=new userDao();
        User user=new User();
        GoodDao gooddao=new GoodDao();
        if (uri.equals("/send.do")) {
            String tel = req.getParameter("tel");
            String code = sendMessageUtil.getRandomCode(6);
            int mobilecode = sendMessageUtil.send("zgycsmb", "d41d8cd98f00b204e980", tel, code);
            String message = sendMessageUtil.getMessage(mobilecode);
            o.print(code);
        }
        else if(uri.equals("/test.do")){
            String name=req.getParameter("name");
            try {
                user=userdao.show(name);

                if(user!=null){
                    o.print("用户名已存在！");
                }
                else{
                    o.print("用户名可用！");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
       else if(uri.equals("/register.do")){
           String name=req.getParameter("username");
           String pwd=req.getParameter("password");
            try {
                userdao.addUser(name,pwd);
                //设置属性
                req.setAttribute("username",name);
                req.getRequestDispatcher("login.jsp").forward(req,resp);
            } catch (SQLException e) {
                e.printStackTrace();
            }
                }
        else if(uri.equals("/login.do")){
           String name=req.getParameter("username");
           String pwd=req.getParameter("password");
           User u=new User();
            try {
               u=userdao.findUser(name,pwd);

            } catch (SQLException e) {
                e.printStackTrace();
            }
            HttpSession session=req.getSession();
            //会话级别
            if(u!=null){
                    session.setAttribute("user",u);
                   resp.sendRedirect("showGoods.do");
            }
            else {
                req.setAttribute("error","用户名或密码错误！");
                req.getRequestDispatcher("login.jsp").forward(req,resp);
            }
        }
        else if(uri.equals("/showGoods.do")){
            String pageNum=req.getParameter("page");
            ArrayList<Goods> arr=new ArrayList<>();
            if(pageNum==null){
                pageNum="1";//给页面设置初始值
            }
            page pg=new page();
            pg.setPage(pageNum);//设置第几页
            pg.setPageSize("4");//设置每页的记录数
            try {
                arr=gooddao.findGoodsByPage(pg);
                int total=gooddao.getCount();
                int totalPage=total%pg.getPageSize()==0?total/pg.getPageSize():total/pg.getPageSize()+1;
                req.setAttribute("totalPage",totalPage);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            req.setAttribute("arr",arr);
            req.setAttribute("pg",pg);
            req.getRequestDispatcher("main.jsp").forward(req,resp);

        }
        else if(uri.equals("/addShop.do")){
        String id=req.getParameter("id");
            try {
                int a=gooddao.addShop(Integer.parseInt(id));
                if(a==1){
                    System.out.println("添加成功！");
                }else {
                    System.out.println("添加失败！");

                }

            } catch (SQLException e) {
                e.printStackTrace();
            }
            resp.sendRedirect("getShops.do");
        }
        else if(uri.equals("/getShops.do")){
            ArrayList<GoShop> arr=new ArrayList<>();
            try {
                arr=gooddao.findGoShopAll();
                req.setAttribute("goArr",arr);
                req.getRequestDispatcher("gouwuche.jsp").forward(req,resp);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        else if(uri.equals("/delGoods.do")){
            String id=req.getParameter("id");
            try {
                int a=gooddao.delGoodsShopById(Integer.parseInt(id));
                if(a==1){
                    System.out.println("删除成功！");
                }else {
                    System.out.println("删除失败！");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            resp.sendRedirect("getShops.do");

        }

        }

}
