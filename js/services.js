angular.module('kggf_services', ['ngResource']).
    factory('Story', function($resource){
  return $resource('/data/stories.json', {}, {
    query: {method:'GET', params:{}, isArray:true}
  });
});