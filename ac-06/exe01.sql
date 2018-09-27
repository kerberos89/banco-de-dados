use AC6;

--USUARIO
INSERT INTO USUARIO([LOGIN], SENHA, DT_EXPIRACAO)
VALUES('FELIPE.MELO', '654321', '2018/06/01');

--Coordenador
INSERT INTO Coordenador(ID_USUARIO, NOME, EMAIL, CELULAR)
VALUES(1, 'Felipe Melo', 'felipe.melo@gmail.com', '11 9999-0000')

--PROFESSOR
INSERT INTO PROFESSOR(ID_USUARIO, NOME, EMAIL, CELULAR, APELIDO)
VALUES(1, 'FELIPE MELO', 'felipe.melo@gmail.com', '11 9-0000-5555', 'Fipe')

--Disciplina
INSERT INTO Disciplina(NOME, [DATA], [STATUS], PLANO_DE_ENSINO, CARGA_HORARIA, COMPETENCIAS, HABILIDADES, EMENTA, CONTEUDO_PROGRAMATICO, BIBLIOGRAFIA_BASICA, BIBLIOGRAFIA_COMPLEMENTAR, PERCENTUAL_PRATICO, PERCENTUAL_TEORICO, ID_COORDENADOR)
VALUES('Comunicação e Expressão', '2018/01/01', 'Aberta', 'Linguagem, língua e fala. Funções da linguagem. Oralidade, escrita e variação linguística. Leitura e estratégias de leitura. Escrita e estratégias de escrita. Paragrafação. Coesão e coerência textuais. Paráfrase e retextualização. Argumentação e persuasão. Particularidades léxicas e gramaticais.', 80, '
1. usar a língua em suas manifestações orais e escritas, em suas dimensões receptivas e produtivas, em diferentes situações ou contextos, com diversos interlocutores ou públicos, como meio de organização cognitiva da realidade, constituição de significados e realização de práticas sociais;
2. ser ético, pontual e comprometido com a disciplina de Comunicação e Expressão. ', 'Ler, escrever e falar', 'Linguagem, língua e fala. Funções da linguagem. Oralidade, escrita e variação linguística. Leitura e estratégias de leitura. Escrita e estratégias de escrita. Paragrafação. Coesão e coerência textuais. Paráfrase e retextualização. Argumentação e persuasão. Particularidades léxicas e gramaticais.', '
1. Critérios de avaliação oral, 2. Critérios de avaliação escrita', 'SAVIOLI, Francisco Platão. Gramática em 44 lições. 15. Ed. São Paulo: Ática, 1998.
FARACO, Carlos Roberto e TEZZA, Cristóvão. Prática de Texto: para estudantes Universitários. 17. ed. Rio de Janeiro: Vozes, 2008.', 'BASTOS, Lucia Kopschitz. A Produção escrita e a gramática. 2. ed. São Paulo: Martins Fontes, 1992.
SAVIOLI, Francisco Platão. Gramática em 44 lições. 15. Ed. São Paulo: Ática, 1998.
FARACO, Carlos Roberto e TEZZA, Cristóvão. Prática de Texto: para estudantes Universitários. 17. ed. Rio de Janeiro: Vozes, 2008. ', 0, 100, 1)

--CURSO
INSERT INTO CURSO(NOME)
VALUES('Matemática')

-- DisciplinaOfertada
INSERT INTO Disciplina_Ofertada (ID_COORDENADOR, DT_INICIO_MATRICULA, DT_FIM_MATRICULA, ID_DISCIPLINA, ID_CURSO, ANO, SEMESTRE, TURMA, ID_PROFESSOR, METODOLOGIA, RECURSOS, CRITERIO_AVALIACAO, PLANO_DE_AULAS)
VALUES(1, '2018/01/01', '2018/12/12', 1, 1, 2018, 1, 'A', 1, 'Prática', 'Computadores', 'Prova e Exercicios', 'Programação')

--ALUNO
INSERT INTO ALUNO(ID_USUARIO, NOME, email, CELULAR, RA, FOTO)
VALUES(1, 'Felipe Melo', 'felipe.melo@gmail.com', '11 9-9999-0000', '1000','/foto/1000.jpg')

--Atividade
INSERT INTO ATIVIDADE(TITULO, DESCRICAO, CONTEUDO, TIPO, EXTRAS, ID_PROFESSOR)
VALUES('AC1', 'Criar DDL', 'Crie o DDL', 'TESTE',  'Verificar anexos', 1)

--Atividade_Vinculada
INSERT INTO Atividade_Vinculada(ID_ATIVIDADE, ID_PROFESSOR, ID_DISCIPLINA_OFERTADA, ROTULO, [STATUS])
VALUEs(1,1,1,'Atividade','ABERTA')

--Solicitacao_Matricula
INSERT INTO Solicitacao_Matricula(id_aluno, ID_DISCIPLINA_OFERTADA, DT_SOLICITACAO, ID_COORDENADOR, [STATUS])
VALUES(1, 1, '2018/01/01', 1, 'APROVADA')

--Entrega
INSERT INTO Entrega(ID_ALUNO, ID_ATIVIDADE_VINCULADA, TITULO, RESPOSTA, DT_ENTREGA, [STATUS], ID_PROFESSOR, NOTA, DT_AVALIACAO, OBS)
VALUES(1, 1, 'AC1 - DDL', 'SELECT', '2018/01/01', 'ENTREGUE', 1, 10, '2018/01/10', 'Verifique a AC')
