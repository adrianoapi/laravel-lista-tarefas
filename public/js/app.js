(function () {
    var app = angular.module('tarefas', []);
    app.controller('TarefasController', function ($scope, $http) {
        $scope.loadData = function () {
            $http.get('http://localhost/toDoList/public/api/tarefas').success(function (data) {
                $scope.dadostarefas = data;
            });
        }
        $scope.loadData();
        $scope.adicionarTarefa = function () {
            dadosPost = {'texto': $scope.texto, 'autor': $scope.autor, 'status': $scope.status}
            var requisicao = $http({method: "post", url: "api/tarefas", data: dadosPost}).success(function (data, status) {
                if (data && status == 201) {
                    // status recebe o status da resposta HTTP de $http
                    $scope.loadData(function () {
                        $scope.texto = '';
                        $scope.autor = '';
                        $scope.status = '';
                    });
                } else {
                    window.alert("Não foi possível adicionar a tarefa!");
                }
            });
        }
    });
    //var tarefa = {'texto': 'Teste', 'autor': 'Eu mesmo', 'status': 'concluido'};
})();
