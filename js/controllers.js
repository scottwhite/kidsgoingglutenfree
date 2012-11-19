function MainCtrl($scope,Story) {
    console.log('Wtf');
  $scope.stories = Story.query();
  $scope.colors = kggf.colors;
}