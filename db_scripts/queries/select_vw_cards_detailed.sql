-- SELECT listing all fields from vw_cards_detailed view
SELECT 
    id,
    hp,
    name,
    type,
    stage,
    info,
    attack,
    damage,
    weak,
    resis,
    retreat,
    card_number_in_collection,
    collection,
    created_at
FROM vw_cards_detailed;


/*
 com um SELECT que lista explicitamente todos os 14 campos da view:

id - ID da carta
hp - Pontos de vida
name - Nome da carta
type - Tipo (substituindo type_id)
stage - Estágio (substituindo stage_id)
info - Informações
attack - Ataque
damage - Dano
weak - Fraqueza
resis - Resistência
retreat - Custo de recuo
card_number_in_collection - Número da carta na coleção
collection - Nome da coleção (substituindo collection_id)
created_at - Data de criação

*/