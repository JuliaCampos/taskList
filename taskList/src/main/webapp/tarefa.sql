
CREATE TABLE public.tarefa (
	tarefa_id bigserial NOT NULL,
	titulo varchar(255) NOT NULL,
	descricao text NOT NULL,
	responsavel varchar(255) NOT NULL,
	prioridade varchar(10) NOT NULL,
	deadline date NOT NULL,
	CONSTRAINT tarefa_pkey PRIMARY KEY (tarefa_id)
);
