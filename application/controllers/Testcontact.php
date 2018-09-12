<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require 'class.phpmailer.php';
require 'class.smtp.php';

class Testcontact extends Public_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('email');
        $this->load->library('session');
        $this->data['lang'] = $this->session->userdata('langAbbreviation');
        // $this->data['lang'] ='en';
        $this->load->model('config_contact_model');
        $this->data['controller'] = $this->config_contact_model->table;
    }
	public function index()
	{
	    if($this->config_contact_model->find_rows(array('is_deleted' => 0, 'is_activated' => 1)) != 0){
	        $this->load->helper('form');
	        $this->load->library('form_validation');
	        $this->data['detail'] = $this->config_contact_model->get_by_activated_contact();
			$this->render('testcontact_view');
	    }else{
	        $this->session->set_flashdata('message_error',MESSAGE_ISSET_ERROR);
	        redirect('/', 'refresh');
	    }
	}
    public function send(){
    	if($this->input->post()){
	    	if($this->config_contact_model->find_rows(array('is_deleted' => 0, 'is_activated' => 1)) != 0){
		        $this->data['detail'] = $this->config_contact_model->get_by_activated_contact();
		        $body_mail = json_decode($this->data['detail']['config_send_mail'],true)['body'][$this->data['lang']];
		        $description_mail = json_decode($this->data['detail']['config_send_mail'],true)['description_email'][$this->data['lang']];
		        $cc_mail = explode(',',json_decode($this->data['detail']['config_send_mail'],true)['cc_email']);
		        $to_mail = json_decode($this->data['detail']['config_send_mail'],true)['to_email'];
		        foreach ($this->input->post() as $key => $value) {
		        	if(is_array($value)){
		        		$body_mail = str_replace('{'. $key .'}', implode(', ', $value), $body_mail);
		        	}else{
		        		$body_mail = str_replace('{'. $key .'}', $value, $body_mail);
		        	}
		        }
		        send_mail("nghemalao@gmail.com","Huongdan1","minhtruong93gtvt@gmail.com",$to_mail,$to_mail,$description_mail,$body_mail,$cc_mail);
		        
		    }
		}
    }

}

/* End of file Testcontact.php */
/* Location: ./application/controllers/Testcontact.php */