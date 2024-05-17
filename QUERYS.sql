
-- PERGUNTA 1: Qual a quantidade total de estudantes cadastrados no banco, quantos estão ativos e qauntos inativos?
SELECT 
    (SELECT COUNT(*) FROM Aluno) AS total_alunos,
    SUM(CASE WHEN status_ativo = 1 THEN 1 ELSE 0 END) AS estudantes_ativos,
    SUM(CASE WHEN status_ativo = 0 THEN 1 ELSE 0 END) AS estudantes_inativos
FROM 
    Aluno;

-- PERGUNTA 2: Quais Facilitadores atuam em mais de uma turma?
SELECT 
    f.id AS id_facilitador,
    f.nome AS nome_facilitador,
    COUNT(DISTINCT r.codigo_turma) AS total_turmas
FROM 
    Facilitador f
JOIN 
    Relacao_Turma_Facilitador r ON f.id = r.id_facilitador
GROUP BY 
    f.id, f.nome
HAVING 
    COUNT(DISTINCT r.codigo_turma) > 1;

-- PERGUNTA 3: Qual a porcentagem de estudantes com status de evasão por turma?
SELECT 
    t.codigo_turma,
    COUNT(*) AS total_alunos,
    SUM(CASE WHEN a.status_ativo = 0 THEN 1 ELSE 0 END) AS alunos_abandonaram,
    (SUM(CASE WHEN a.status_ativo = 0 THEN 1 ELSE 0 END) * 100 / COUNT(*)) AS porcentagem_abandono
FROM 
    Aluno a
JOIN 
    Turma t ON a.codigo_turma = t.codigo_turma
GROUP BY 
    t.codigo_turma;

-- PERGUNTA 4: Qual a porcentagem de estudantes com status de evasão por Curso?
SELECT COUNT(*) AS total_alunos
FROM Aluno;

SELECT COUNT(*) AS alunos_evasao
FROM Aluno
WHERE status_ativo = FALSE;

SELECT 
    (COUNT(*) * 100 / (SELECT COUNT(*) FROM Aluno)) AS porcentagem_evasao
FROM 
    Aluno
WHERE 
    status_ativo = FALSE;

-- PERGUNTA 5: Quantos estudantes mudaram seu status para inativo no último mês
SELECT 
    COUNT(*) AS quantidade_alunos_inativos
FROM 
    Log_aluno
WHERE 
    novo_status = 0
AND 
    data_alteracao >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH);

-- PERGUNTA 6: Quais alunos matriculados estão ativos atualmente em módulos que fazem parte de cursos com duração superior a 6 meses?
SELECT DISTINCT
a.nome AS nome_aluno,
c.nome AS nome_curso,
c.duracao AS duracao_curso
FROM Aluno a
JOIN Modulo m ON a.codigo_turma = m.id
JOIN Curso c ON m.id_curso = c.id
WHERE a.status_ativo = TRUE
AND c.duracao > 6;