<%@page import="com.taskList.controler.*"%>
<%@page import="com.taskList.domain.*"%>
<%@page import="com.taskList.repository.*"%>
<%@page import="com.taskList.service.*"%>
<%@page import="java.util.List"%>
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
				<th>Id</th>
				<th>Titulo</th>
				<th>Descricao</th>
				<th>Responsavel</th>
				<th>Prioridade</th>
				<th>Deadline</th>
			</tr>
			<%
			if (repository != null) {
				for (Task item : repository.findAll()) {
			%>
			<tr>
				<td><%=item.getId()%></td>
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
