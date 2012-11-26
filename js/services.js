var kggf_services = angular.module('kggf_services', ['ngResource']);
kggf_services.factory('Story', function($resource){
  return $resource('/data/stories.json', {}, {
    query: {method:'GET', params:{}, isArray:true}
  });
});