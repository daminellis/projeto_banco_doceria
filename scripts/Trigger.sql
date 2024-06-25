-- Trigger para chamar a função antes de inserir ou atualizar um pedido
CREATE TRIGGER trigger_verificar_ingredientes
BEFORE INSERT OR UPDATE ON pedido
FOR EACH ROW
EXECUTE FUNCTION verificar_ingredientes();