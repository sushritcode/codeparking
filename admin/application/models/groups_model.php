<?php
class Groups_model extends CI_Model
{

	function __construct()
	{
		parent::__construct();
	}

	function enable()
	{
		$this->db->set( "GroupStatus" , '1');
		$this->db->where("LMGroupId = '".$this->uri->segment(3)."'");
		$this->db->update('LMGroupDetails');

		/*
		$this->db->set( "ContactStatus" , '1');
		$this->db->where("GroupID = '".$this->uri->segment(3)."'");
		$this->db->update('LMContactDetails');
		*/


	}
	function disable()
	{
		$this->db->set( "GroupStatus" , '0');
		$this->db->where("LMGroupId = '".$this->uri->segment(3)."'");
		$this->db->update('LMGroupDetails');

		/*
		$this->db->set( "ContactStatus" , '1');
		$this->db->where("GroupID = '".$this->uri->segment(3)."'");
		$this->db->update('LMContactDetails');
		*/


	}


	function updateGroup()
	{	

		$this->load->helper('my_extra_functions');
		$formTableMap = form_table_map();
		$formValues = $this->input->get(NULL,true);
		$numEntries =  $this->db->where("LMGroupId ='".trim($this->input->get('LMGroupId'))."'")->get('LMGroupDetails')->num_rows();
		$flag=2;
		if( $numEntries == 0)
			return $flag;
		$numEntries =  $this->db->where("GroupName ='".trim($this->input->get('groupName'))."'")->get('LMGroupDetails')->num_rows();
		if( $numEntries > 0)
			return 3;

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
				$this->db->where("LMGroupId = '".$this->input->get('LMGroupId')."'");
				$this->db->update('LMGroupDetails');
				$flag=4;
				return $flag;
			}
		}
		return $flag;
	}

	function loadDetails($LMGroupId)
	{

		if (is_numeric($LMGroupId))
		{
			$this->db->where(array('LMGroupId' => $LMGroupId));
			return $this->db->get('LMGroupDetails')->row();
		}
		return null;
	}


	function getAll()
	{

		$this->db
			->select('LMGroupId, GroupName, Association, GroupStatus')
			->from('LMGroupDetails')
			->where("Association='".$this->session->userdata('LMLoginId') ."'")
			->order_by('LMGroupID desc ');
		$query = $this->db->get();
		$recordSet['list'] = $query->result();
		return $recordSet;

	}


	function InsertGroup()
	{

		$this->load->helper('my_extra_functions');
		$formTableMap = form_table_map();
		$formValues = $this->input->get(NULL,true);
		$numEntries =  $this->db->where("LCASE(TRIM(GroupName)) ='".trim(strtolower($this->input->get('groupName')))."' and Association ='". $this->session->userdata('LMLoginId')."'")->get('LMGroupDetails')->num_rows();
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
					$this->db->insert('LMGroupDetails');
					$flag=1;
				}
			}



		}
		return $flag;

	}

}

