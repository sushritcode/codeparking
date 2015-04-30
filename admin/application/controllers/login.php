<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller 
{

	public function index()
	{

		$data = array();
		$data['base_url'] = $this->config->item('base_url');
		$this->load->view('login/login', $data);
	}
	public function checkaccess()
	{	
		$this->load->model('Users_model');
		$data = array();
		$data = $this->Users_model->checkLogin(base64_decode($this->uri->segment(3)),base64_decode($this->uri->segment(4)));
		if($data)
		{
			//redirect($this->config->item('base_url') . 'dashboard/', 'refresh');
			echo "1";
		}
		else
		{
			//redirect($this->config->item('base_url') . '', 'refresh');
			
			echo "0";
		}
	}
}
?>


