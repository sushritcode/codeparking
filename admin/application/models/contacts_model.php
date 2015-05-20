<?php
class Contacts_model extends CI_Model
{

	function __construct()
	{
		parent::__construct();
	}
	function getAll()
	{

		$this->db
			->select('a.ContactId, a.ContactName, a.ContactEmailAddress, a.ContactMobileNo, b.GroupName, a.Association, a.ContactStatus')
			->from('LMContactDetails a, LMGroupDetails b')
			->where("a.GroupID = b.LMGroupID AND a.Association = b.Association")
			->order_by('ContactId desc ');
		$query = $this->db->get();
		$recordSet['list'] = $query->result();
		return $recordSet;
			
	}
	function insertContact()
	{

		$this->load->helper('my_extra_functions');
		$formTableMap = form_table_map();
		$formValues = $this->input->get(NULL,true);
		$numEntries =  $this->db->where("GroupID ='".trim($this->input->get('groupName'))."' and Association ='". $this->session->userdata('LMLoginId')."' and ContactEmailAddress = '".trim($this->input->get('contactEmail'))."'")->get('LMContactDetails')->num_rows();
		$flag=0;
		if($numEntries == 0)
		{

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
					$this->db->set( 'Association' , $this->session->userdata('LMLoginId'));
					$this->db->insert('LMContactDetails');
					$flag=1;
				}
			}



		}
		else
			$flag=2;

		return $flag;

	}
}

?>
