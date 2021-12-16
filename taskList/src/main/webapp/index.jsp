
<%@page import="org.springframework.stereotype.Repository"%>
<%@page import="com.taskList.service.TaskService"%>
<%@page import="com.taskList.repository.TaskRepository"%>
<%@page import="com.taskList.controler.TaskControler"%>
<%@page import="java.util.List"%>
<%@page import="com.taskList.domain.Task"%>

<%
TaskRepository repository = null;
%>

<div>
	<h1 class="centro">Tarefas</h1>

	<div>
		<a href="tarefa-cadastrar.jsp">Nova Tarefa</a><br />

		<form action="tarefas.jsp" method="post">
			<input type="text" name="txtFiltro" /> <input type="submit"
				value="Pesquisar" /><br />
		</form>
		<table border="1">
			<tr>
				<th>Titulo</th>
				<th>Descricao</th>
				<th>Responsavel</th>
				<th>Prioridade</th>
				<th>Deadline</th>
				<th>Ação</th>
			</tr>
			<%
			if (repository != null) {
				for (Task item : repository.findAll()) {
			%>
			<tr>
				<td><%=item.getTitulo()%></td>
				<td><%=item.getDescricao()%></td>
				<td><%=item.getResponsavel()%></td>
				<td><%=item.getPrioridade()%></td>
				<td><%=item.getDeadline()%></td>				
				<td><a href="tarefa-atualizar.jsp?id=<%=item.getId()%>">Editar</a>
					<a href="tarefa-excluir.jsp?id=<%=item.getId()%>">Excluir</a></td>

			</tr>
			<%
			}
			}
			%>
		</table>
	</div>
</div>
</body>
</html>
