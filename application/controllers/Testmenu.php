<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Testmenu extends Public_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->helper(array('url','common'));
		$this->load->model("menu_model");
		$this->load->model("post_model");
		$this->load->model("post_category_model");
		$this->load->model("product_category_model");
		$this->load->model("product_model");
	}
	public function index()
	{
		foreach ($this->menu_model->get_all() as $key => $value) {
			$detail[] = build_language('menu', $value, array('title'), $this->page_languages);
		}
		$this->data['detail'] = $detail;
		$this->render('testmenu_view');
	}

}

/* End of file Testmenu.php */
/* Location: ./application/controllers/Testmenu.php */