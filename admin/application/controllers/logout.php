<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Logout extends CI_Controller 
{

	function __construct()
	{
		// this is your constructor
		parent::__construct();
	}




	function index()
	{
		
		$this->session->sess_destroy();
		redirect($this->config->item('base_url') . '', 'refresh');
	}
}
?>

