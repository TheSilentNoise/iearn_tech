var app = angular.module("myApp", ["ngRoute","ngSanitize"]);

app.config(function($routeProvider) {
    $routeProvider
    .when("/", {
        templateUrl : "page1.jsp"
    })
    .when("/sql", {
        templateUrl : "sql.jsp",
        controller: "commonPage"
    })
    .when("/de", {
        templateUrl : "de.jsp"
    })
    .when("/java", {
        templateUrl : "java.jsp"
    });
});

app.controller("commonPage", function($scope){
	$scope.content = [{content:"<p>MySQL is an open source relational database management system (RDBMS) based on Structured Query Language (SQL).</p><p>MySQL runs on virtually all platforms, including LINUX, MAC as well as WINDOWS.</p><p>MySQL, which was originally conceived by the Swedish company MySQL AB, was acquired by Sun Microsystems in 2008 and then by Oracle when it bought Sun in 2010.&nbsp;Developers can still use MySQL under the GNU General Public License (GPL), but enterprises must obtain a commercial license from Oracle.</p><p>This tutorial will provide a good start for you to learn MySQL and make yourself comfortable in database arena.</p><h2>Prerequisites:</h2><ol><li>Installation of MySQL Server 5.6+</li><li>Installation of MySQL Workbench 6.3+</li></ol><p style=\"text-align: justify;\">Windows / Linux Operating System</p>", header:"Introduction"}, {content:"content2", header:"CRUD Operations"}];
	$scope.id = 0;
	$scope.chooseHtmlElement = $scope.content[0].content;
	$scope.showSection = function(index){
		$scope.id = index;
		
	//	console.log($scope.content[index].content);
		$scope.chooseHtmlElement = $scope.content[index].content;
	};
	
	//$scope.chooseHtmlElement= function (index) {
		
		
	//};
	
});