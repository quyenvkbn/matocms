<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Homepage extends Public_Controller {

    public function __construct() {
        parent::__construct();
		$this->load->helper(array('url','common'));
		$this->load->model("menu_model");
		$this->load->model("post_model");
		$this->load->model("post_category_model");
		// $this->load->model("product_category_model");
		// $this->load->model("product_model");
    }

    public function index() {
		foreach ($this->menu_model->get_all() as $key => $value) {
			$detail[] = build_language('menu', $value, array('title'), $this->page_languages);
		}
		$this->build_new_category($detail,0,$detail1);
		echo "<pre>";
		print_r($detail1);
		echo "<pre>";
        $this->render('homepage_view');
    }

    public function build_new_category($categorie, $parent_id = 0,&$result, $id = "",$char=""){
        $cate_child = array();
        foreach ($categorie as $key => $item){
            if ($item['parent_id'] == $parent_id){
                $cate_child[] = $item;
                unset($categorie[$key]);
            }
        }
        if ($cate_child){
            foreach ($cate_child as $key => $value){
            $select = ($value['id'] == $id)? 'selected' : '';
            $result.='<option value="'.$value['id'].'"'.$select.'>'.$char.$value['title_vi'].'</option>';
            $this->build_new_category($categorie, $value['id'],$result, $id, $char.'---|');
            }
        }
    }
}