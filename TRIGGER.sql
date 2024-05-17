DELIMITER //

CREATE TRIGGER aluno_AFTER_UPDATE AFTER UPDATE ON aluno FOR EACH ROW 
BEGIN
    IF NEW.status_ativo <> OLD.status_ativo THEN
        INSERT INTO Log_aluno (data_alteracao, matricula_aluno, status_antigo, novo_status)
        VALUES (NOW(), NEW.matricula, OLD.status_ativo, NEW.status_ativo);
    END IF;
END;
//

DELIMITER ;