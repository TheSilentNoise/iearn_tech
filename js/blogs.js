var app = angular.module("blogApp", ["ngRoute"]);

app.config(function($routeProvider) {
    $routeProvider
    .when("/", {
        templateUrl : "all-blog.jsp"
    })
    .when("/java", {
        templateUrl : "java-blog.jsp"
    })
    .when("/sql", {
        templateUrl : "sql-blog.jsp"
    })
     .when("/miscellaneous", {
        templateUrl : "miscellaneous-blog.jsp"
    })
    
    
    
    
    .when("/java/collection-framework-cheatsheet", {
        templateUrl : "CollectionCheatsheet.jsp"
    })
     .when("/sql/nosql-concepts", {
        templateUrl : "NoSqlConcepts.jsp"
    })
    
    .when("/java/apache-common-chain", {
        templateUrl : "apache-common-chain.jsp"
    })
    
    .when("/miscellaneous/api-concepts", {
        templateUrl : "api-concepts.jsp"
    })
    
});