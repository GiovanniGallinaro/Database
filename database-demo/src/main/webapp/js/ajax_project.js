// Check for the File API support.
if (window.File && window.FileReader && window.FileList && window.Blob) {
  document.getElementById('files').addEventListener('change', handleFileSelect, false);
} else {
  alert('The File APIs are not fully supported in this browser.');
}


// *************************** SELECT PROJECT 1 *****************************

// Create object to be sent to the server
var documentToBeSent = new Object();

// Set action on botton click
var id_document = document.getElementById("id-button-1");

// Make ajax call to server
id_document.addEventListener("click", function(event){
	
	// Prevent default behaviour
	event.preventDefault();
	
	// Check if id missing something!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	var jsonToBeSent = JSON.stringify(documentToBeSent);
	
	$.ajax({
		type: "POST",
		dataType: "json",
		data: jsonToBeSent,
		contentType: "application/json; charset=utf-8",
		url: "rest/document",
		success: alert("Object Sent to server!")
	});
});

var uuids = [null];

// Ajax request
$.ajax({
  contentType: "application/json; charset=utf-8",
  url: "rest/project",
  success: displayProjects
});

function displayProjects(data) {
	
	// Log error message
	if (data.message != null){
		console.log(data.message);
		console.log(data.message.error-code);
		console.log(data.message.error-details);
	}
		
	var select = document.getElementById("project");
	var list = data["resource-list"];
	for (i = 0; i < list.length; i++) {
		var option = document.createElement("option");
		option.text = list[i].project.title;
		uuids.push(list[i].project.uuid);
		select.add(option);
	}

}

// *************************** SELECT TASK 1 *****************************

$('#project').change(function()	{
	
	var sel = document.getElementById("project");
	var tsk = $("#task");
	tsk.find('option').remove();
	var ind = sel.selectedIndex;
	console.log(ind);
	console.log(uuids[ind]);
	
	// Ajax request
	$.ajax({
	  contentType: "application/json; charset=utf-8",
	  url: "rest/project/" + uuids[ind] + "/task",
	  success: function(data)	{
		// Log error message
		if (data.message != null){
			console.log(data.message);
			console.log(data.message.error-code);
			console.log(data.message.error-details);
		}
			
		var select = document.getElementById("task");
		var list = data["resource-list"];
		for (i = 0; i < list.length; i++) {
			var option = document.createElement("option");
			option.text = list[i].task.name + " - level " + list[i].task.level;
			select.add(option);
		}
	  }
	});
	
});

// *************************** SELECT EMPLOYEE 2 *****************************

// Ajax request
$.ajax({
  contentType: "application/json; charset=utf-8",
  url: "rest/employee",
  success: displayEmployees2
});

function displayEmployees2(data) {
	
	// Log error message
	if (data.message != null){
		console.log(data.message);
		console.log(data.message.error-code);
		console.log(data.message.error-details);
	}
		
	var select = document.getElementById("employee2");
	var list = data["resource-list"];
	for (i = 0; i < list.length; i++) {
		var option = document.createElement("option");
		option.text = list[i].employee.name + " " + list[i].employee.surname;
		select.add(option);
	}

}	

// *************************** SELECT PROJECT 2 *****************************

// Create object to be sent to the server
var documentToBeReceived = new Object();

var uuids2 = [null];

// Ajax request
$.ajax({
  contentType: "application/json; charset=utf-8",
  url: "rest/project",
  success: displayProjects2
});

function displayProjects2(data) {
	
	// Log error message
	if (data.message != null){
		console.log(data.message);
		console.log(data.message.error-code);
		console.log(data.message.error-details);
	}
		
	var select = document.getElementById("project2");
	var list = data["resource-list"];
	for (i = 0; i < list.length; i++) {
		var option = document.createElement("option");
		option.text = list[i].project.title;
		uuids2.push(list[i].project.uuid);
		select.add(option);
	}

}

// *************************** SELECT TASK 2 *****************************

var tsks2 = [];

$('#project2').change(function()	{
	
	var sel = document.getElementById("project2");
	var tsk = $("#task2");
	tsk.find('option').remove();
	var ind = sel.selectedIndex;
	documentToBeReceived.uuid = uuids2[ind];
	console.log(ind);
	console.log(uuids2[ind]);
	
	// Ajax request
	$.ajax({
	  contentType: "application/json; charset=utf-8",
	  url: "rest/project/" + uuids2[ind] + "/task",
	  success: function(data)	{
		// Log error message
		if (data.message != null){
			console.log(data.message);
			console.log(data.message.error-code);
			console.log(data.message.error-details);
		}
			
		var select = document.getElementById("task2");
		var list = data["resource-list"];
		for (i = 0; i < list.length; i++) {
			var option = document.createElement("option");
			option.text = list[i].task.name + " - level " + list[i].task.level;
			tsks2.push(list[i].task.taskuuid);
			select.add(option);
		}
	  }
	});
	
});

$('#task2').change(function()	{
	
	var sel = document.getElementById("task2");
	var ind = sel.selectedIndex;
	documentToBeReceived.task = tsks2[ind];
	console.log(ind);
	console.log("Selected Task ID: " + tsks2[ind]);
	console.log(documentToBeReceived.task);
	
});

// Set action on botton click
var id_document2 = document.getElementById("id-button-2");

// Make ajax call to server
id_document2.addEventListener("click", function(event){
	
	// Prevent default behaviour
	event.preventDefault();
	
	$.ajax({
		type: "GET",
		contentType: "application/json; charset=utf-8",
		url: "rest/document/" + documentToBeReceived.task,
		success: alert("Object Sent to server!")
	});
});

var base64String;

function handleFileSelect(evt) {
  var f = evt.target.files[0]; // FileList object
  var reader = new FileReader();
  // Closure to capture the file information.
  reader.onload = (function(theFile) {
    return function(e) {
      var binaryData = e.target.result;
      //Converting Binary Data to base 64
      base64String = window.btoa(binaryData);
      
    
      //alert('File converted to base64 successfuly!\nCheck in Textarea');
    };
  })(f);
  // Read in the image file as a data URL.
  reader.readAsBinaryString(f);
}