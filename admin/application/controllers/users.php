<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Users extends CI_Controller {

	function __construct()
	{
		$this->loginRequired = Array("edit","save");
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

		$this->load->helper('my_extra_functions');
		$data['recordSetIndustry'] = industry_list();
		$data['recordSetTimeZone'] = timezone_list();
		$data['recordSetCurrency'] = currency_list();
		$this->load->view('admin_header', $data);
		$this->load->view('admin_navigation', $data);
		$this->load->view('users/edit', $data);
		$this->load->view('admin_footer', $data);

	}
	public function save()
	{
		$this->load->model('Users_model');
		$data = $this->Users_model->UpdateUsers();
		echo "1";
			
	}
}


