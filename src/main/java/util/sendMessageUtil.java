package util;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.junit.jupiter.api.Test;

import java.util.Random;

/**
 * @site www.xxx.com ����˾��ַ��
 * @company ĳĳ����Ƽ����޹�˾  ����˾���ƣ�
 * @create 2019-08-19 16:49 ��ʱ�䣩
 * ���Ͷ�����֤�Ĺ�����
 */
public class sendMessageUtil {
    private static final String SMS_Url = "http://sms.webchinese.cn/web_api/";
    /**
     * @param Uid  SMS�û�id:com.seecen
     * @param Key          �ӿ���Կ��SMS��¼�ɲ飨�ǵ�¼���룩d41d8cd98f00b204e980
     * @param sendPhoneNum ���ŷ���Ŀ�����
     * @param desc         ��������
     * @return Integer(1���ɹ��룬����ʧ�ܣ�����μ�ע��)
     */
    //���Ͷ��ŵķ���
    public static Integer send(String Uid,String Key,String sendPhoneNum,String desc){
        //httpͨ�ſ�
        HttpClient client = new HttpClient();
        //�������õ�ȡ�ӿڵķ���
        PostMethod post = new PostMethod(SMS_Url);
        post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=utf-8");
        //���ò���
        //һ�ִ��εķ�ʽ
        NameValuePair[] data = {
                new NameValuePair("Uid", Uid),
                new NameValuePair("Key", Key),//��Կ
                new NameValuePair("smsMob", sendPhoneNum),
                new NameValuePair("smsText", desc)
        };
        post.setRequestBody(data);
        try{
            client.executeMethod(post);
        }catch (Exception e){
            e.printStackTrace();
        }
        Header[]  headers = post.getRequestHeaders();
        int statusCode = post.getStatusCode();
        System.out.println("statusCode:" + statusCode);
        for (Header h : headers) {
            System.out.println(h.toString());
        }

        String result = "";
        try {
            result = new String(post.getResponseBodyAsString().getBytes("gbk"));
        } catch (Exception e) {
            e.printStackTrace();
        }

        post.releaseConnection();

        return Integer.parseInt(result);
    }
    //����ģ��ɹ�����
    public static int sendTest(String Uid,String Key,String sendPhoneNum,String desc){
        String result ="1";
        return Integer.parseInt(result);
    }

    //�ж���Կ״̬
    /**
     * -1  û�и��û��˻�
     * -2 �ӿ���Կ����ȷ [�鿴��Կ]�����˻���½����
     * -21    MD5�ӿ���Կ���ܲ���ȷ
     * -3 ������������
     * -11    ���û�������
     * -14    �������ݳ��ַǷ��ַ�
     * -4 �ֻ��Ÿ�ʽ����ȷ
     * -41    �ֻ�����Ϊ��
     * -42    ��������Ϊ��
     * -51    ����ǩ����ʽ����ȷ�ӿ�ǩ����ʽΪ����ǩ�����ݡ�
     * -6 IP����
     * ����0    ���ŷ�������
     * ������Ϊ����
     */
    public static String getMessage(Integer code){
        String message;
        if (code > 0) {
            message = "SMS-f���ͳɹ���";
        } else if (code == -1) {
            message = "SMS-û�и��û��˻�";
        } else if (code == -2) {
            message = "SMS-�ӿ���Կ����ȷ";
        } else if (code == -21) {
            message = "SMS-MD5�ӿ���Կ���ܲ���ȷ";
        } else if (code == -3) {
            message = "SMS-������������";
        } else if (code == -11) {
            message = "SMS-���û�������";
        } else if (code == -14) {
            message = "SMS-�������ݳ��ַǷ��ַ�";
        } else if (code == -4) {
            message = "SMS-�ֻ��Ÿ�ʽ����ȷ";
        } else if (code == -41) {
            message = "SMS-�ֻ�����Ϊ��";
        } else if (code == -42) {
            message = "SMS-��������Ϊ��";
        } else if (code == -51) {
            message = "SMS-����ǩ����ʽ����ȷ�ӿ�ǩ����ʽΪ����ǩ�����ݡ�";
        } else if (code == -6) {
            message = "SMS-IP����";
        } else {
            message = "��������";
        }
        return message;
    }
    //�������6λ��֤��
    public static String getRandomCode(Integer code){
        Random random = new Random();
        StringBuffer sb = new StringBuffer();
        for(int i=0;i<code;i++){
            sb.append(random.nextInt(code));
        }
        return sb.toString();
    }

}
