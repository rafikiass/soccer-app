(function(){
	"use strict";

	angular.module("app").controller("favoriteCtrl", function($scope){

		function postFavorite() {$http.post("/favorites").then(function (response){
    		
    		});


	});

})();