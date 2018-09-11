<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Post extends Public_Controller {
  
    public function __construct() {
        parent::__construct();
        $this->data['lang'] = $this->session->userdata('langAbbreviation');
        $this->load->model('post_model');
        $this->load->model('post_category_model');
    }

    public function index() {
        $this->data['current_link'] = 'post';
    }

    public function get_multiple_posts_with_category_id($categories, $parent_id = 0, &$id_array){
        foreach ($categories as $key => $item){
            if ($item['parent_id'] == $parent_id){
                $id_array[] = $item['id'];
                unset($categories[$key]);
                $this->get_multiple_posts_with_category_id($categories, $item['id'], $id_array);
            }
        }
    }

    public function category($slug){
    	if($this->post_category_model->find_rows(array('slug' => $slug,'is_deleted' => 0,'is_activated' => 0)) != 0){
    		$this->data['detail'] = $this->post_category_model->get_by_slug($slug, 'desc', $this->data['lang']);
    		echo 'CATEGORY';
            echo '<pre>';
            print_r($this->data['detail']);
            echo '</pre>';
            echo 'LIST POST';
	        $this->get_multiple_posts_with_category_id($this->post_category_model->get_all(), $this->data['detail']['id'], $id_array);
	        if(empty($id_array)){
	            $id_array = array();
	        }
	        array_unshift($id_array,$this->data['detail']['id']);
	        $total_rows = 0;
	        $posts = $this->post_model->get_all_with_pagination_post('desc', $this->data['lang'],NULL, NULL, $id_array);
	        echo '<pre>';
	        print_r($posts);
	        echo '</pre>';
	    }else{
            $this->session->set_flashdata('message_error',MESSAGE_ISSET_ERROR);
            redirect('/testmenu', 'refresh');
        }
    }

    public function detail($slug){
        if($this->post_model->find_rows(array('slug' => $slug,'is_deleted' => 0,'is_activated' => 0)) != 0){
            $this->data['detail'] = $this->post_model->get_by_slug($slug, array('title', 'content'), $this->data['lang']);
            echo '<pre>';
            print_r($this->data['detail']);
            echo '</pre>';
        }else{
            $this->session->set_flashdata('message_error',MESSAGE_ISSET_ERROR);
            redirect('/testmenu', 'refresh');
        }
    }

}

/* End of file Post.php */
/* Location: ./application/controllers/Post.php */