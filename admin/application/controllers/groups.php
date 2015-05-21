<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Groups extends CI_Controller 
{


	function __construct()
	{
		$this->loginRequired = Array();
		parent::__construct();
	}
	function enable()
	{
		$this->load->model('Groups_model');
		$this->Groups_model->enable();
     	        redirect($this->config->item('base_url').'groups/', 'refresh');

	}
	function disable()
	{
		$this->load->model('Groups_model');
		$this->Groups_model->disable(0);	
     	        redirect($this->config->item('base_url').'groups/', 'refresh');
	}

	function update()
	{
		$this->load->model('Groups_model');
		$data["resultUpdate"] = $this->Groups_model->updateGroup();
		$arrMessage = local_messages($this->router->class);
		echo $arrMessage[$data["resultUpdate"]];

	}
	
	function load()
	{

		$data = array();
		$data['base_url'] = $this->config->item('base_url');
		
		$this->load->model('Groups_model');
		$this->load->helper('my_extra_functions');

		
		$data['loaderUI'] = modal_dialog_loader();
		$data['form_table_map'] = form_table_map();
		
		$data["resultGetDetails"] = $this->Groups_model->loadDetails($this->uri->segment(3));
		
		$this->load->view('admin_header', $data);
		$this->load->view('admin_navigation', $data);
		$this->load->view('groups/edit', $data);
		$this->load->view('admin_footer', $data);


		
	}
	function index()
	{
		$data = array();
		$data['base_url'] = $this->config->item('base_url');
		
		$this->load->model('Groups_model');
		$this->load->helper('my_extra_functions');
			
		$data['loaderUI'] = modal_dialog_loader();
		$data["resultGetAll"] = $this->Groups_model->getAll();	

		$this->load->view('admin_header', $data);
		$this->load->view('admin_navigation', $data);
		$this->load->view('groups/index', $data);
		$this->load->view('admin_footer', $data);
	}

	function add()
	{


		$data = array();
		$data['base_url'] = $this->config->item('base_url');
		$this->load->helper('my_extra_functions');
		$data['loaderUI'] = modal_dialog_loader();
		
		$this->load->view('admin_header', $data);
		$this->load->view('admin_navigation', $data);
		$this->load->view('groups/add', $data);
		$this->load->view('admin_footer', $data);
	}
	function save()
	{	
		$this->load->model('Groups_model');
		$this->load->helper('my_extra_functions');
		$data = array();
		$data['base_url'] = $this->config->item('base_url');
		$data["resultInsert"] = $this->Groups_model->InsertGroup();
		$arrMessage = local_messages($this->router->class);
		echo $arrMessage[$data["resultInsert"]];
	}

}

