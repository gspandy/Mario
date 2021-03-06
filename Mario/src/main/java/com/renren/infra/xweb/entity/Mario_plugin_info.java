
package com.renren.infra.xweb.entity;

import javax.validation.constraints.NotNull;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 
 * 
 * @author yong.cao
 * @create-time 2014-4-2
 * @revision 1.0.0
 * @E_mail yong.cao@renren-inc.com
 */
public class Mario_plugin_info {

    /**
    * 
    */
    private Integer id;
    /**
    * 
    */
    private String plugin_name;
    /**
    * 
    */
    private Integer zk_id;
    /**
    * 
    */
    private String cluster_name;
    /**
     * 
     */
    private String msg_sender;
    /**
    * 
    */
    private String mail_sender;
    /**
    * 
    */
    private String phone_number;
    /**
    * 
    */
    private String email_address;
    /**
    * 
    */
    private String args;
    /**
    * 
    */
    private String commit;
    
    /**
    *
    * Mario_plugin_info 的缺省构造方法
    *
    */
    public Mario_plugin_info () {
    }
    
    /**
    *
    * get方法
    *
    */
    public Integer getid(){
        return this.id;
    }
    /**
    *
    * set方法
    *
    */
    public void setid(Integer id){
        this.id = id;
    }
    /**
    *
    * get方法
    *
    */
    @NotNull(message = "必须指定PluginName")
    @NotBlank(message = "必须指定PluginName")
    public String getplugin_name(){
        return this.plugin_name;
    }
    /**
    *
    * set方法
    *
    */
    public void setplugin_name(String plugin_name){
        this.plugin_name = plugin_name;
    }
    /**
    *
    * get方法
    *
    */
    @NotNull(message = "必须指定ZooKeeper集群")
    public Integer getzk_id(){
        return this.zk_id;
    }
    /**
    *
    * set方法
    *
    */
    public void setzk_id(Integer zk_id){
        this.zk_id = zk_id;
    }
    
    /**
     * @return the cluster_name
     */
    public String getCluster_name() {
        return cluster_name;
    }

    
    /**
     * @param cluster_name the cluster_name to set
     */
    public void setCluster_name(String cluster_name) {
        this.cluster_name = cluster_name;
    }

    /**
    *
    * get方法
    *
    */
    @NotNull(message = "必须制定MssageSender，可以指定DebugMsgSender")
    @NotBlank(message = "必须制定MssageSender，可以指定DebugMsgSender")
    public String getmsg_sender(){
        return this.msg_sender;
    }
    /**
    *
    * set方法
    *
    */
    public void setmsg_sender(String msg_sender){
        this.msg_sender = msg_sender;
    }
    /**
    *
    * get方法
    *
    */
    @NotNull(message = "必须制定MailSender，可以指定DebugMailSender")
    @NotBlank(message = "必须制定MailSender，可以指定DebugMailSender")
    public String getmail_sender(){
        return this.mail_sender;
    }
    /**
    *
    * set方法
    *
    */
    public void setmail_sender(String mail_sender){
        this.mail_sender = mail_sender;
    }
    /**
    *
    * get方法
    *
    */
    public String getphone_number(){
        return this.phone_number;
    }
    /**
    *
    * set方法
    *
    */
    public void setphone_number(String phone_number){
        this.phone_number = phone_number;
    }
    /**
    *
    * get方法
    *
    */
    public String getemail_address(){
        return this.email_address;
    }
    /**
    *
    * set方法
    *
    */
    public void setemail_address(String email_address){
        this.email_address = email_address;
    }
    /**
    *
    * get方法
    *
    */
    public String getargs(){
        return this.args;
    }
    /**
    *
    * set方法
    *
    */
    public void setargs(String args){
        this.args = args;
    }
    /**
    *
    * get方法
    *
    */
    public String getcommit(){
        return this.commit;
    }
    /**
    *
    * set方法
    *
    */
    public void setcommit(String commit){
        this.commit = commit;
    }
	
    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}