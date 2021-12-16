<html> 
        <div>
            <h1 class="centro">Cadastro de tarefas</h1>
            <div>
                <form action="tarefas-cadastrar.jsp" method="post">
                    <label>id:</label><input type="text" name="txtId"/><br />
                    <label>Titulo:</label><input type="text" name="txtTitulo" /><br />
                    <label>Descricao:</label><input type="text" name="txtDescricao" /><br />
                    <label>Responsavel:</label><input type="text" name="txtResponsavel" /><br />
                    <label>Prioridade:</label><input type="text" name="txtPrioridade" /><br />
                    <label>Deadline:</label><input type="date" name="dateDeadline" /><br />
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Cadastrar" />                  
                </form>
            </div>
        </div>
    </body>
</html>
