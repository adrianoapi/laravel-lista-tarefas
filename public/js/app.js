(function () {
    var app = angular.module('tarefas', []);
    app.controller('TarefasController', function ($scope, $http) {
        $scope.loadData = function () {
            $http.get('http://localhost/toDoList/public/api/tarefas').success(function (data) {
                $scope.dadostarefas = data;
            });
        }
        $scope.loadData();
    });
    //var tarefa = {'texto': 'Teste', 'autor': 'Eu mesmo', 'status': 'concluido'};
})();
