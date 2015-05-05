<?php
class Users_model extends CI_Model
{

	function __construct()
	{
		parent::__construct();
	}
	function loadUserProfile($id)
	{
		if ($id != "")
		{
			$this->db->where(array('LMLoginId' => $id));
			return $this->db->get('LMUserProfile')->row();
		}
		return null;
	}
	function insertUsers()
	{

		$EmailAddress= trim($this->input->post("email"));
		if(trim($EmailAddress) == "")
		{       
			$data['result'] = "Email Address Invalid.<br />";
			$data['id'] = "emailid";
			$data['status'] = "failure";
			return $data;

		}
		$UserName= trim($this->input->post("username"));
		if(trim($UserName) == "")
		{       
			$data['result'] = "User name Invalid.<br />";
			$data['id'] = "username";
			$data['status'] = "failure";
			return $data;

		}
		$Password= trim($this->input->post("password"));
		if(trim($Password) == "")
		{       
			$data['result'] = "Password Invalid.<br />";
			$data['id'] = "password";
			$data['status'] = "failure";
			return $data;

		}
		$companyname = trim($this->input->post("companyname"));
		if(trim($companyname) == "")
		{       
			$data['result'] = "Company Name Invalid.<br />";
			$data['id'] = "companyname";
			$data['status'] = "failure";
			return $data;

		}

		//LMUserid 	LMPassword 	LMRole 0-LMSuperAdmin,1-CompanyAdmin	LMLoginEnabled 	LMCreatedOn 	LMCreatedBy 			

		$numRows = $this->db->where("LMUserid = '".trim($UserName)."' or '".trim($EmailAddress)."'")->get('LMLoginUsers')->num_rows();
		if($numRows >0 )
		{	 
			$data['result'] = "User (<b>".$EmailAddress."</b>) Or (<b>".$UserName."</b>) already exists.<br />";
			$data['status'] = "failure";
			$data['id'] = "emailid";
			return $data;

		}

		$date = date('Y-m-d H:i:s');
		$this->db->set('LMUserid', trim($UserName));
		$this->db->set('LMEmailAddress', trim($EmailAddress));
		$this->db->set('LMPassword', trim($Password));
		$this->db->set('LMRole', '1');
		$this->db->set('LMLoginEnabled', '0');
		$this->db->set('LMCreatedOn', trim($date));
		$this->db->set('LMCreatedBy', 'website');
		$this->db->insert('LMLoginUsers');
		$result = '';


		$data['result'] = "User (<b>".$EmailAddress."</b>) Please Login.<br />";
		$data['status'] = "success";
		return $data;

	}
	function checkLogin($Userid , $Password)
	{
		$where = " LMLoginEnabled = '1' and LMUserid='".trim($Userid)."' and LMPassword = '".trim($Password)."' ";
		//$where = " a.LMLoginEnabled = 1 and a.LMUserid='".trim($Userid)."' and a.LMPassword = '".trim($Password)."' and a.LMLoginId = b.LMLoginId ";
		$result = $this->db->get_where("LMLoginUsers",$where ,TRUE);
		if ($result->num_rows() > 0)
		{
			$row = $result->row();
			$this->session->set_userdata($row);
			return true;
		}
		return false;


	}
	function UpdateUsers()
	{
		$this->load->helper('my_extra_functions');
		$formTableMap = form_table_map();
		$formValues = $this->input->get(NULL,true);
		//print_r($formValues);exit;
		$numEntries =  $this->db->where('LMLoginId = ', $this->session->userdata('LMLoginId'))->get('LMUserProfile')->num_rows();
		if($numEntries == 0)
		{
			$this->db->set('LMLoginId', trim($this->session->userdata('LMLoginId')));
			$this->db->insert('LMUserProfile');

		}
		if(isset($formValues['formname']))
		{
			if($formValues['formname'] != "")
			{

				foreach($formValues as $key => $value):
					if($key != "formname"):
						if(isset($formTableMap[$formValues['formname']][$key]) && $value !=""):
							$this->db->set( $formTableMap[$formValues['formname']][$key] , trim($value));
						endif;
					endif;
				endforeach;
				$this->db->where('LMLoginId' ,$this->session->userdata('LMLoginId'));
				$this->db->update('LMUserProfile');
			}
		}
	}
}

