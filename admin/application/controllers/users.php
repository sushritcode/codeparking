<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Users extends CI_Controller {

	function __construct()
	{
		$this->loginRequired = Array("edit");
		parent::__construct();
	}

	public function index()
	{
		$data = array();
		$data['base_url'] = $this->config->item('base_url');
		//$this->load->view('login/login', $data);
	}
	public function register()
	{
		$this->load->model('Users_model');
		$data = array();
		$data = $this->Users_model->insertUsers();
		print_r($data);

		exit;
	}
	public function edit()
	{
		
		$data = array();
		$data['base_url'] = $this->config->item('base_url');

		$this->load->helper('MY_industry_helper');
		//echo test_method('Hello World');
		//exit;
		$this->load->view('admin_header', $data);
		$this->load->view('admin_navigation', $data);
		$this->load->view('users_edit', $data);
		
		$this->load->view('admin_footer', $data);

	}
}


