package dao;

import entity.GoShop;
import entity.Goods;
import entity.page;
import util.DButil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class GoodDao {
    public ArrayList<Goods> findGood() throws SQLException {
        Connection con= DButil.getcon();
        String sql="select * from XM_GOODS";
        PreparedStatement pst=con.prepareStatement(sql);
        ResultSet res=pst.executeQuery();
        ArrayList<Goods> arr=new ArrayList<>();
        while (res.next()){
                Goods g=new Goods();
                g.setId(res.getInt("id"));
                g.setTitle(res.getString("title"));
                g.setEvaluate(res.getString("evaluate"));
                g.setPrice(res.getDouble("price"));
                g.setImgurl(res.getString("imgurl"));
                g.setType(res.getString("type"));
                g.setManufacturer(res.getString("manufacturer"));
                arr.add(g);
        }
        return arr;

    }
    public  ArrayList<Goods> findGoodsByPage(page page) throws SQLException {
        Connection con= DButil.getcon();
        ArrayList<Goods> arr=new ArrayList<>();
        StringBuffer sb=new StringBuffer();
        sb.append(page.PAGE_START);
        sb.append("select * from xm_goods");
        sb.append(page.PAGE_END);
        PreparedStatement pst=con.prepareStatement(sb.toString());
        pst.setInt(1,page.getStop());
        pst.setInt(2,page.getStart());
        ResultSet res=pst.executeQuery();
        ArrayList<Goods> ar=new ArrayList<>();
        while (res.next()){
            Goods g=new Goods();
            g.setId(res.getInt("id"));
            g.setTitle(res.getString("title"));
            g.setEvaluate(res.getString("evaluate"));
            g.setPrice(res.getDouble("price"));
            g.setImgurl(res.getString("imgurl"));
            g.setType(res.getString("type"));
            g.setManufacturer(res.getString("manufacturer"));
            ar.add(g);
        }
        return ar;
    }
public int getCount() throws SQLException {
    Connection con= DButil.getcon();
    String sql="select count(*) sum from xm_goods";
    PreparedStatement pst=con.prepareStatement(sql);
    ResultSet res=pst.executeQuery();
    while (res.next()){
        return res.getInt("sum");
    }
    return 0;
}
    public Goods findGoodById(int id) throws SQLException {
        Connection con= DButil.getcon();
        String sql="select * from xm_goods where id=?";
        PreparedStatement pst=con.prepareStatement(sql);
        pst.setInt(1,id);
        ResultSet res=pst.executeQuery();
        while (res.next()){
            Goods g=new Goods();
            g.setId(res.getInt("id"));
            g.setTitle(res.getString("title"));
            g.setEvaluate(res.getString("evaluate"));
            g.setPrice(res.getDouble("price"));
            g.setImgurl(res.getString("imgurl"));
            g.setType(res.getString("type"));
            g.setManufacturer(res.getString("manufacturer"));
           return g;
        }
        return null;

    }
    public  int  addShop(int id) throws SQLException {
            Connection con= DButil.getcon();
            Goods g=new Goods();
            GoodDao goodDao=new GoodDao();
            g=goodDao.findGoodById(id);
            String sql="insert into xm_goshop values(t_goshop_seq.nextval,?,?,?)";
            PreparedStatement pst=con.prepareStatement(sql);
            pst.setString(1,g.getImgurl());
            pst.setString(2,g.getTitle());
            pst.setDouble(3,g.getPrice());
            return pst.executeUpdate();
    }
    public ArrayList<GoShop> findGoShopAll() throws SQLException {
        Connection con= DButil.getcon();
        ArrayList<GoShop> arr=new ArrayList<>();
        String sql="select * from xm_goshop";
        PreparedStatement pst=con.prepareStatement(sql);
        ResultSet res=pst.executeQuery();
        while (res.next()){
            GoShop goShop=new GoShop();
                goShop.setId(res.getInt("id"));
                goShop.setImgurl(res.getString("imgurl"));
                goShop.setTitle(res.getString("title"));
                goShop.setPrice(res.getDouble("price"));
                arr.add(goShop);
        }
        return arr;
    }
    public  int delGoodsShopById(int id) throws SQLException {
        Connection con=DButil.getcon();
        String sql="delete from xm_goshop where id=?";
        PreparedStatement pst=con.prepareStatement(sql);
        pst.setInt(1,id);
        return  pst.executeUpdate();

    }

    public static void main(String[] args) throws SQLException {
        /*
        GoodDao goodDao=new GoodDao();

        ArrayList<Goods> arr=new ArrayList<>();
        arr=goodDao.findGood();
        for (int i = 0; i <arr.size() ; i++) {
            System.out.println("标题："+arr.get(i).getTitle());

        }
         */
    GoodDao goodDao=new GoodDao();
    ArrayList<Goods> arr=new ArrayList<>();
    page p1=new page(1,2);
        System.out.println(goodDao.getCount());
//    arr=goodDao.findGoodsByPage(p1);
//    for(Goods g:arr ){
//        System.out.println(g.getId());
//    }
    }
}
