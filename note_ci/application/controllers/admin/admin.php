<?php
defined('BASEPATH')OR exit('No direct script access allowed');
include(dirname(__FILE__).'\base_controller.php');
class Admin extends Base_Controller{
    public function __construct() {
        parent::__construct();
        $this->load->model('admin_model');
    }
    
    public function index(){
        $limit = '5';
        $admin = $this->session->userdata('adminname');
        $offset = $this->uri->segment(5)?$this->uri->segment(5):0;
        $list = $this->admin_model->getList('gb',$limit,$offset);
        $pages = $this->admin_model->pages('gb',$limit,'admin/admin/index/offset');
        if(!empty($admin)){
            $this->load->view('admin/index',array(
                'adminname' => $admin,
                'list' => $list,
                'pages' => $pages,
            ));
        }else{
            redirect('admin/admin/login');
        }
    }
    
    public function login(){
        if(!empty($_POST)){
            $_POST['adminpwd'] = md5($_POST['adminpwd']);
            $admin = $this->admin_model->login($_POST);
            if(!empty($admin)){
                $this->session->set_userdata('adminname',$admin['adminname']);
                redirect('admin/admin/index');
            }
        }
        $this->session->userdata('adminname')?redirect('admin/admin/index'):$this->load->view('/admin/login');
    }
    
    public function signout()
    {
        $this->session->unset_userdata('adminname');
        $admin=  $this->session->userdata('adminname');
        empty($admin)?redirect('admin/admin/login'):exit('未退出成功');
    }
    
    public function delete(){
        $this->uri->segment(5)?$this->admin_model->delete('gb',  $this->uri->segment(5)):exit('未删除成功');
        redirect('admin/admin/index');
    }
    
    public function update(){
        //$this->uri->segment(5)获得第五个参数，url上从index.php开始往后数，/划分
        /*$this->uri->uri_to_assoc(4)把每个分段信息以"标识字"=>"具体值"的形式存放在一个联合数组Array()里
         *例index.php/admin/admin/update/id/148 为   array('id' => 148)
         */
        empty($_POST)?$this->admin_model->getOne('gb',  $this->uri->uri_to_assoc(4)):$this->admin_model->update('gb',$_POST);
        $this->uri->uri_to_assoc(4)?$this->admin_model->getOne('gb',  $this->uri->uri_to_assoc(4)):redirect('admin/admin/index');
        $admin = $this->session->userdata('adminname');
        $this->load->view('admin/update',array(
            'adminname' => $admin,
            'msg' => $this->admin_model->getOne('gb',  $this->uri->uri_to_assoc(4)),
        ));
    }
}
?>
