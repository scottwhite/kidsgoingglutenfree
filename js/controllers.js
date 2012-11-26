function MainCtrl($scope, Story) {
  $scope.stories = Story.query();
  $scope.colors = kggf.colors;
  $scope.story_details={body:"what",color:'red'};
  $scope.show_details = function(title, color_idx){
    var b = 'No story found';
    $scope.stories.forEach(function(story){
        if(story.title === title){
            b = story.body;
        }
    })
    $scope.story_details.body = b;
    $scope.story_details.color = $scope.colors[(color_idx % $scope.colors.length)];
    $scope.modal_shown = true;
    return false;
  };
}

// minified code requires this
// and this feels funky having it at the bottom
MainCtrl.$inject = ['$scope', 'Story'];