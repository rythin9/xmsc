package entity;
//封装分页查询
public class page {
    public static final String PAGE_START="select * from(select g.* ,rownum rn from(";
    public static final String PAGE_END=")g where rownum<=?) where rn>?";
    //设置一个默认的页面格式，即当前是第几页
    private  Integer page;
    //每页的页数
    private Integer pageSize;
    public page(Integer page, Integer pageSize){
        this.page=page;
        this.pageSize=pageSize;
    }
    public page(){}

    public Integer getPage() {
        return page;
    }

    public void setPage(String page) {
      if(page!=null){

          try{
              int pg=Integer.parseInt(page);
              if(pg>0){
                  this.page=pg;
              }
          }
          catch (Exception e){
              System.out.println("类型转换错误");
          }
      }
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(String pageSize) {
        if(pageSize!=null){
            try{
                int pgs=Integer.parseInt(pageSize);
                if(pgs>0) {
                    this.pageSize = pgs;
                }
                }
            catch (Exception e){
                System.out.println("类型转换异常！");
            }
        }
    }
    //得到开始的位置
    public  Integer getStart(){
        return  (page-1)*pageSize;
    }
    //得到最后一条记录的位置
    public  Integer getStop(){
        return  page*pageSize;
    }
}
