<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		
	</head>
	<body ng-app="myApp" ng-controller="UserController as ctrl">
		<div class="container">
			<div class="col-sm-8 col-sm-offset-2">
    			<div class="page-header"><h1>Post Message</h1></div>
    		
    			<form name="myForm" ng-submit="ctrl.submit()">
				    <div class="form-group">
				        <label>Message</label>
				        <input type="text" name="msg" class="form-control" ng-model="ctrl.user.msg">
				        <span ng-show="errorMessage">{{errorMsg}}</span>
				    </div>
		    
		    		<!--<button type="submit" class="btn btn-primary">Submit</button>-->
		    		<input type="submit" value="Submit" class="btn btn-primary">
			</div>
		</div>
		
		<div >
                <!-- Default panel contents -->
              <label>Response Message: <span ng-bind="ctrl._users.msg"></span></label>
          </div>
		
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/user_service.js' />"></script>
      <script src="<c:url value='/static/js/controller/user_controller.js' />"></script>
	</body>
</html>
