<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Contacts extends CI_Controller 
{


	function __construct()
	{
		$this->loginRequired = Array("index","add","save","load","update","enable","disable","import","savecsv","exportcsv");
		parent::__construct();
	}
	function exportcsv()
	{
		$this->load->model('Contacts_model');
		$this->load->helper('my_extra_functions');
		
		$query = $this->db->query('Select * from LMContactDetails;');
		query_to_csv($query,TRUE,"contacts.csv");
		
	}
	function enable()
	{
		$this->load->model('Contacts_model');
		$this->Contacts_model->enable();
     	        redirect($this->config->item('base_url').'contacts/', 'refresh');

	}
	function disable()
	{
		$this->load->model('Contacts_model');
		$this->Contacts_model->disable(0);	
     	        redirect($this->config->item('base_url').'contacts', 'refresh');
	}

	function update()
	{
		$this->load->model('Contacts_model');
		$data["resultUpdate"] = $this->Contacts_model->updateContact();
		$arrMessage = local_messages($this->router->class);
		echo $arrMessage[$data["resultUpdate"]];

	}
	function load()
	{
		
		$data = array();
		$data['base_url'] = $this->config->item('base_url');
		
		$this->load->model('Contacts_model');
		$this->load->helper('my_extra_functions');

		
		$data['loaderUI'] = modal_dialog_loader();
		$data['form_table_map'] = form_table_map();
		$data['contacts_group'] = contacts_group();

		$data["resultGetDetails"] = $this->Contacts_model->loadDetails($this->uri->segment(3));
		
		$this->load->view('admin_header', $data);
		$this->load->view('admin_navigation', $data);
		$this->load->view('contacts/edit', $data);
		$this->load->view('admin_footer', $data);


		
	}
	function index()
	{
		$data = array();
		$data['base_url'] = $this->config->item('base_url');
		
		$this->load->model('Contacts_model');
		$this->load->helper('my_extra_functions');
			
		$data['loaderUI'] = modal_dialog_loader();
		$data["resultGetAll"] = $this->Contacts_model->getAll();	

		$this->load->view('admin_header', $data);
		$this->load->view('admin_navigation', $data);
		$this->load->view('contacts/index', $data);
		$this->load->view('admin_footer', $data);
	}
	function add()
	{
		$data = array();
		$data['base_url'] = $this->config->item('base_url');
		$this->load->helper('my_extra_functions');
		$data['loaderUI'] = modal_dialog_loader();
		$data['contacts_group'] = contacts_group();
		
		$this->load->view('admin_header', $data);
		$this->load->view('admin_navigation', $data);
		$this->load->view('contacts/add', $data);
		$this->load->view('admin_footer', $data);

	}
	function save()
	{	
		$this->load->model('Contacts_model');
		$this->load->helper('my_extra_functions');
		$data = array();
		$data['base_url'] = $this->config->item('base_url');
		$data["resultInsert"] = $this->Contacts_model->InsertContact();
		$arrMessage = local_messages($this->router->class);
		echo $arrMessage[$data["resultInsert"]];
	}
	function import()
	{
		$data = array();
		$data['base_url'] = $this->config->item('base_url');
		
		$this->load->model('Contacts_model');
		$this->load->helper('my_extra_functions');
			
		$data['loaderUI'] = modal_dialog_loader();
		$data['contacts_group'] = contacts_group();

		$this->load->view('admin_header', $data);
		$this->load->view('admin_navigation', $data);
		$this->load->view('contacts/import', $data);
		$this->load->view('admin_footer', $data);
	}
	function savecsv()
	{	
		$this->load->model('Contacts_model');
		$this->load->helper('my_extra_functions');
		$data = array();
		$data['base_url'] = $this->config->item('base_url');
		

		$arrMessage = local_messages($this->router->class);
		$data['loaderUI'] = modal_dialog_loader();
		$data['contacts_group'] = contacts_group();


		$type = explode(".",$_FILES['selectFile']['name']);
		$error_msg = "";
		if(strtolower(end($type)) != 'csv')
			$error_msg = $arrMessage[5];
		if(trim($_POST['groupName']) == "" )
			$error_msg = $arrMessage[6];
		

		$data['error_msg'] = $error_msg;
		$data["resultInsert"] = Array();
		if($error_msg == "")
			$data["resultInsert"] = $this->Contacts_model->savecsv();


		$this->load->view('admin_header', $data);
		$this->load->view('admin_navigation', $data);
		$this->load->view('contacts/import', $data);
		$this->load->view('admin_footer', $data);
	}

}



