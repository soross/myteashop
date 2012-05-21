package com.sdkd.adminsystem.action;

import java.util.ArrayList;
import java.util.List;
import com.googlecode.jsonplugin.annotations.JSON;
import com.opensymphony.xwork2.ActionSupport;

public class JsonPluginAction extends ActionSupport {

	private int id;
	private String title;
	private double price;
	private List<String> item;
	private transient String secret1;
	private String secret2;

	//@JSON(name = "ISBN")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<String> getItem() {
		return item;
	}

	public void setItem(List<String> item) {
		this.item = item;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String execute() {
		/**
		id = '0';
		item = new ArrayList();
		it = new ArrayList()
		item.add();
		comments.add("WOW!");
		comments.add("No comment!");
		secret1 = "You can't see me!";
		secret2 = "I am invisible!";
		
		
		{id:, item:[
		       		{id:'-1',  text:'产品管理', item:[
		       		  {id:'prodlist.php', text:'产品列表'},
		       		  {id:'prodlist.php', text:'产品列表'},
		       		  {id:'prodlist.php', text:'产品列表'}]]}
		
		if(isset($_GET["id"]))
			$id=$_GET["id"];
		else $id=0;
		
		echo "{id:'".$id."', item:[\n";
		for ($i=0; $i <5 ; $i++) { 
			if ($i!=0) echo "," ;
			echo "{id:'".$i.'-'.$id."',  text:'level 1-".$i."-".$id."', child:'1' }\n";
		}
		echo "]}\n";
		
		
		**/
		
		
		
		return SUCCESS;
	}
}
