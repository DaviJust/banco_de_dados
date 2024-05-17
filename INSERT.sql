USE RESILIA;

INSERT INTO Curso (nome, duracao, valor, carga_horaria) VALUES 
('Desenvolvimento Web', 6, 1500.50, 120),
('Data Science', 12, 2000.75, 180),
('Gestão de Projetos', 4, 800.25, 80),
('Marketing Digital', 8, 1700.80, 160),
('Redes de Computadores', 10, 1300.65, 200);

INSERT INTO Turma (id_curso, sala, turno) VALUES
(1, 101, 'Manhã'),
(2, 203, 'Noite'),
(3, 301, 'Manhã'),
(4, 402, 'Tarde'),
(5, 505, 'Tarde');

INSERT INTO Modulo (id_curso, titulo, descricao) VALUES
(1, 'Introdução ao HTML', 'Este módulo aborda os conceitos básicos do HTML.'),
(2, 'Estatística Descritiva', 'Neste módulo, os alunos aprenderão sobre estatística descritiva.'),
(3, 'Planejamento de Projeto', 'Este módulo foca no planejamento e gestão de projetos.'),
(4, 'Marketing de Conteúdo', 'Os alunos aprenderão sobre estratégias de marketing de conteúdo.'),
(5, 'Topologias de Rede', 'Este módulo explora diferentes topologias de rede.');

INSERT INTO Aluno (codigo_turma, nome, email, telefone, data_matricula, cep, frequencia, media, status_ativo) VALUES
(1, 'João Silva', 'joao@example.com', '219999999', '2024-01-15', '12345-678', 95.75, 85.00, 1),
(1, 'Maria Santos', 'maria@example.com', '218888888', '2024-02-20', '54321-987', 90.25, 80.00, 1),
(1, 'Carlos Oliveira', 'carlos@example.com', '217777777', '2024-03-25', '98765-432', 85.50, 75.00, 1),
(1, 'Ana Costa', 'ana@example.com', '216666666', '2024-04-30', '13579-246', 80.75, 70.00, 1),
(1, 'Pedro Almeida', 'pedro@example.com', '215555555', '2024-05-05', '24680-135', 75.25, 65.00, 1),
(2, 'Fernanda Lima', 'fernanda@example.com', '21987654321', '2024-06-10', '54321-123', 85.50, 75.00, 1),
(2, 'Rafael Oliveira', 'rafael@example.com', '21976543210', '2024-07-15', '98765-123', 90.75, 80.00, 1),
(2, 'Juliana Santos', 'juliana@example.com', '21965432109', '2024-08-20', '65432-123', 95.25, 85.00, 1),
(2, 'Pedro Henrique', 'pedroh@example.com', '21954321098', '2024-09-25', '54321-321', 80.25, 70.00, 1),
(2, 'Luana Almeida', 'luana@example.com', '21943210987', '2024-10-30', '43210-321', 75.50, 65.00, 1),
(3, 'Gustavo Silva', 'gustavo@example.com', '2187654321', '2024-11-05', '54321-123', 85.25, 75.00, 1),
(3, 'Carolina Oliveira', 'carolina@example.com', '2187654322', '2024-12-10', '98765-123', 90.50, 80.00, 1),
(3, 'Ana Paula Santos', 'anapaula@example.com', '2187654323', '2025-01-15', '65432-123', 95.75, 85.00, 1),
(3, 'Mariana Costa', 'mariana@example.com', '2187654324', '2025-02-20', '54321-321', 80.50, 70.00, 1),
(3, 'Rodrigo Almeida', 'rodrigo@example.com', '2187654325', '2025-03-25', '43210-321', 75.75, 65.00, 1),
(4, 'Camila Silva', 'camila@example.com', '2176543210', '2025-04-30', '12345-987', 85.75, 75.00, 1),
(4, 'Vinicius Oliveira', 'vinicius@example.com', '2176543211', '2025-05-05', '98765-123', 90.25, 80.00, 1),
(4, 'Fernanda Santos', 'fernanda@example.com', '2176543212', '2025-06-10', '65432-123', 95.50, 85.00, 1),
(4, 'Gabriel Costa', 'gabriel@example.com', '2176543213', '2025-07-15', '54321-321', 80.75, 70.00, 1),
(4, 'Aline Almeida', 'aline@example.com', '2176543214', '2025-08-20', '43210-321', 75.25, 65.00, 1),
(5, 'Roberto Silva', 'roberto@example.com', '216543210', '2025-09-25', '12345-987', 85.25, 75.00, 1),
(5, 'Laura Oliveira', 'laura@example.com', '216543211', '2025-10-30', '98765-123', 90.50, 80.00, 1),
(5, 'Eduardo Santos', 'eduardo@example.com', '216543212', '2025-11-05', '65432-123', 95.25, 85.00, 1),
(5, 'Tatiane Costa', 'tatiane@example.com', '216543213', '2025-12-10', '54321-321', 80.50, 70.00, 1),
(5, 'Guilherme Almeida', 'guilherme@example.com', '216543214', '2026-01-15', '43210-321', 75.75, 65.00, 1);

INSERT INTO Facilitador (id_modulo, nome, especialidade, email, telefone) VALUES
(1, 'Luciana Oliveira', 'Desenvolvimento Web', 'luciana@example.com', '21111111111'),
(2, 'Ricardo Santos', 'Estatística', 'ricardo@example.com', '21222222222'),
(3, 'Juliana Silva', 'Gestão de Projetos', 'juliana@example.com', '21333333333'),
(4, 'Mariana Costa', 'Marketing Digital', 'mariana@example.com', '21444444444'),
(5, 'André Almeida', 'Redes de Computadores', 'andre@example.com', '21555555555');

INSERT INTO Relacao_Turma_Facilitador (id_facilitador, codigo_turma) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 1),
(3, 3);

INSERT INTO Relacao_Modulo_Curso (id_modulo, id_curso) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(1, 2),
(2, 2),
(3, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3);