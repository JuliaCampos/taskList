<%@page import="com.taskList.controler.*"%>
<%@page import="com.taskList.service.*"%>
<%@page import="com.taskList.repository.*"%>
<%@page import="com.taskList.domain.*"%>

<%
    String msg = "";
    if(request.getParameter("siape")==null)
    {
        response.sendRedirect("tarefas.jsp");
    }
    else
    {
       Long id = 1L;       
        TaskRepository controler = null;
        //buscar o registro pela chave primaria
        Task obj = controler.findById(id).get();
        if(obj!=null)
        {
        	controler.deleteById(id);

            msg = "Registro excluido com sucesso";
        }
        else
        {
            msg = "Registro nãoo encontrado. Verifique.";
        }
        
    }
%>
         <h1 class="centro">Excluir de Tarefa</h1>
            
         <div>
             <%=msg%><br />
             <a href="tarefas.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
