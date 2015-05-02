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
	}
}


