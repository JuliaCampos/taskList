
<%@page import="org.springframework.stereotype.Repository"%>
<%@page import="com.taskList.service.TaskService"%>
<%@page import="com.taskList.repository.TaskRepository"%>
<%@page import="com.taskList.controler.TaskControler"%>
<%@page import="com.taskList.domain.Task"%>

<%
Long id;

response.sendRedirect("tarefas.jsp");

TaskRepository task;

Task obj = task.findById(id).get();

if (obj == null) {
	response.sendRedirect("tarefas.jsp");
	return;
}
%>
<div>
	<h1 class="centro">Atualizar tarefas</h1>
	<div>
		<form action="tarefa-atualizar.jsp" method="post">
			<label>Id:</label> <input type="text" name="txtId"
				value="<%=obj.getId()%>" readonly="readonly" /><br /> <label>Titulo:</label>
			<input type="text" name="txtTitulo" value="<%=obj.getTitulo()%>" /><br />
			<label>Descricao:</label> <input type="text" name="txtDescricao"
				value="<%=obj.getDescricao()%>" /><br /> <label>Responsavel:</label>
			<input type="text" name="txtResponsavel"
				value="<%=obj.getResponsavel()%>" /><br /> <label>Prioridade:</label>
			<input type="text" name="txtPrioridade"
				value="<%=obj.getPrioridade()%>" /><br /> <label>Deadline:</label>
			<input type="date" name="txtDeadline" value="<%=obj.getDeadline()%>" /><br />
			<input type="submit" value="Atualizar" />
		</form>
	</div>
</div>
</body>
</html>
