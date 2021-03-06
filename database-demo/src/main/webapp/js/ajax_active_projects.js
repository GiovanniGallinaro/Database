// *************************** TABLE ACTIVE PROJECTS *****************************

// Ajax request
$.ajax({
  contentType: "application/json; charset=utf-8",
  url: "rest/project/active",
  success: displayActiveProjects
});

function displayActiveProjects(data) {
	
	// Log error message
	if (data.message != null){
		console.log(data.message);
		console.log(data.message.error-code);
		console.log(data.message.error-details);
	}
		
	var table = document.getElementById("activeprojects");
	var list = data["resource-list"];
	for (i = 0; i < list.length; i++) {
		var row = table.insertRow(1);
		var cell1 = row.insertCell(0);
		var cell2 = row.insertCell(1);
		var cell3 = row.insertCell(2);
		var cell4 = row.insertCell(3);
		var cell5 = row.insertCell(4);
		var cell6 = row.insertCell(5);
		cell1.innerHTML = list[i].project.title;
		cell2.innerHTML = list[i].project.location;
		cell3.innerHTML = list[i].project.startdate;
		cell4.innerHTML = list[i].project.deadline;
		cell5.innerHTML = list[i].project.estimatedhours;
		cell6.innerHTML = list[i].project.hoursspent;
	}

}	

// *************************** REFRESH ACTIVE PROJECTS *****************************

$('#refresh-button').click(function()	{
	
	// Ajax request
	$.ajax({
	  contentType: "application/json; charset=utf-8",
	  url: "rest/project/active",
	  success: refreshActiveProjects
	});

	function refreshActiveProjects(data) {
		
		$("#activeprojects tr").remove();
		$("#activeprojects").append("<tr><th>Project Name</th><th>Location</th><th>Start Date</th><th>Deadline</th><th>Estimated Hours</th><th>Hours Spent</th></tr>");
		
		// Log error message
		if (data.message != null){
			console.log(data.message);
			console.log(data.message.error-code);
			console.log(data.message.error-details);
		}
			
		var table = document.getElementById("activeprojects");
		var list = data["resource-list"];
		for (i = 0; i < list.length; i++) {
			var row = table.insertRow(1);
			var cell1 = row.insertCell(0);
			var cell2 = row.insertCell(1);
			var cell3 = row.insertCell(2);
			var cell4 = row.insertCell(3);
			var cell5 = row.insertCell(4);
			var cell6 = row.insertCell(5);
			cell1.innerHTML = list[i].project.title;
			cell2.innerHTML = list[i].project.location;
			cell3.innerHTML = list[i].project.startdate;
			cell4.innerHTML = list[i].project.deadline;
			cell5.innerHTML = list[i].project.estimatedhours;
			cell6.innerHTML = list[i].project.hoursspent;
		}

	}	

});

// *************************** TABLE PROJECTS *****************************

// Ajax request
$.ajax({
  contentType: "application/json; charset=utf-8",
  url: "rest/project",
  success: displayTableProjects
});

function displayTableProjects(data) {
	
	// Log error message
	if (data.message != null){
		console.log(data.message);
		console.log(data.message.error-code);
		console.log(data.message.error-details);
	}

	var table = document.getElementById("allprojects");
	var list = data["resource-list"];
	for (i = 0; i < list.length; i++) {
		var row = table.insertRow(1);
		var cell1 = row.insertCell(0);
		var cell2 = row.insertCell(1);
		var cell3 = row.insertCell(2);
		var cell4 = row.insertCell(3);
		var cell5 = row.insertCell(4);
		var cell6 = row.insertCell(5);
		var cell7 = row.insertCell(6);
		cell1.innerHTML = list[i].project.title;
		cell2.innerHTML = list[i].project.location;
		cell3.innerHTML = list[i].project.startdate;
		cell4.innerHTML = list[i].project.enddate;
		cell5.innerHTML = list[i].project.deadline;
		cell6.innerHTML = list[i].project.estimatedhours;
		cell7.innerHTML = list[i].project.hoursspent;
	}

}	

// *************************** REFRESH ALL PROJECTS *****************************

$('#refresh-button').click(function()	{
	
	// Ajax request
	$.ajax({
	  contentType: "application/json; charset=utf-8",
	  url: "rest/project",
	  success: refreshAllProjects
	});

	function refreshAllProjects(data) {
		
		$("#allprojects tr").remove();
		$("#allprojects").append("<tr><th>Project Name</th><th>Location</th><th>Start Date</th><th>End Date</th><th>Deadline</th><th>Estimated Hours</th><th>Hours Spent</th></tr>");
		
		// Log error message
		if (data.message != null){
			console.log(data.message);
			console.log(data.message.error-code);
			console.log(data.message.error-details);
		}
			
		var table = document.getElementById("allprojects");
		var list = data["resource-list"];
		for (i = 0; i < list.length; i++) {
			var row = table.insertRow(1);
			var cell1 = row.insertCell(0);
			var cell2 = row.insertCell(1);
			var cell3 = row.insertCell(2);
			var cell4 = row.insertCell(3);
			var cell5 = row.insertCell(4);
			var cell6 = row.insertCell(5);
			var cell7 = row.insertCell(6);
			cell1.innerHTML = list[i].project.title;
			cell2.innerHTML = list[i].project.location;
			cell3.innerHTML = list[i].project.startdate;
			cell4.innerHTML = list[i].project.enddate;
			cell5.innerHTML = list[i].project.deadline;
			cell6.innerHTML = list[i].project.estimatedhours;
			cell7.innerHTML = list[i].project.hoursspent;
		}

	}	

});