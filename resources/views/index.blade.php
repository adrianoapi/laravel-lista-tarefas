<!DOCTYPE html>
<html ng-app="tarefas">
    <head>
        <meta charset="UTF-8">
        <title>Minha Lista de tarefas</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body class="container" ng-controller="TarefasController as tarefas">
        <div class="page-header">
            <h2>Minha lista de tarefas</h2>
        </div>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Tarefa</th>
                    <th>Autor</th>
                    <th>Status</th>
                    <th>Alterar</th>
                </tr>
            </thead>
            <tr ng-repeat="tarefa in dadostarefas">
                <td>@{{tarefa.texto}}</td>
                <td>@{{tarefa.autor}}</td>
                <td>@{{tarefa.status}}</td>
                <td width="10%">
                    <span ng-if="tarefa.status == 'Concluído'">
                        <input type="button" value="Marcar como Pendente" class="btn btn-success" ng-click="mudarStatus(tarefa.id, 'Pendente')">
                    </span>
                    <span ng-if="tarefa.status != 'Concluído'">
                        <input type="button" value="Marcar como Concluído" class="btn btn-warning" ng-click="mudarStatus(tarefa.id, 'Concluído')">
                    </span>
                </td>
            </tr>  
        </table>

        <form ng-submit="adicionarTarefa()">
            <label for="texto">Tarefa</label>
            <input id="texto" type="text" ng-model="texto" required placeholder="Texto" class="form-control"/>
            <label for="autor">Autor</label>
            <input id="autor" type="text" ng-model="autor" required placeholder="Autor" class="form-control"/>
            <label for="status">Status</label>
            <select id="status" ng-model="status" required class="form-control">
                <option value="Concluído">Concluído</option>
                <option value="Pendente">Pendente</option>
            </select>
            <input type="submit" value="Cadastrar" class="btn btn-default"/>
        </form>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.7/angular.js"></script>
        <script src="js/app.js"></script>
    </body>
</html>