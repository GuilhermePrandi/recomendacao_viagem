% Países associados a cada perfil
pais_para(explorador, 'Nepal').
pais_para(explorador, 'Chile').
pais_para(explorador, 'Canadá').
pais_para(explorador, 'Peru').
pais_para(explorador, 'Indonésia').

pais_para(gourmet, 'Itália').
pais_para(gourmet, 'México').
pais_para(gourmet, 'Tailândia').
pais_para(gourmet, 'Turquia').
pais_para(gourmet, 'China').

pais_para(praieiro, 'Maldivas').
pais_para(praieiro, 'Filipinas').
pais_para(praieiro, 'Grécia').
pais_para(praieiro, 'Brasil').
pais_para(praieiro, 'Espanha').

pais_para(moderno, 'Coreia do Sul').
pais_para(moderno, 'Singapura').
pais_para(moderno, 'Japão').
pais_para(moderno, 'Alemanha').
pais_para(moderno, 'Estados Unidos').

pais_para(ecologico, 'Costa Rica').
pais_para(ecologico, 'Nova Zelândia').
pais_para(ecologico, 'Equador').
pais_para(ecologico, 'Austrália').
pais_para(ecologico, 'Canadá').

pais_para(religioso, 'Índia').
pais_para(religioso, 'Israel').
pais_para(religioso, 'Vaticano').
pais_para(religioso, 'Arábia Saudita').
pais_para(religioso, 'Irã').

pais_para(luxuoso, 'Mônaco').
pais_para(luxuoso, 'Dubai').
pais_para(luxuoso, 'Maldivas').
pais_para(luxuoso, 'Suíça').
pais_para(luxuoso, 'Catar').

pais_para(historico, 'Egito').
pais_para(historico, 'Grécia').
pais_para(historico, 'Turquia').
pais_para(historico, 'China').
pais_para(historico, 'França').

pais_para(montanhista, 'Suíça').
pais_para(montanhista, 'Nepal').
pais_para(montanhista, 'Áustria').
pais_para(montanhista, 'Argentina').
pais_para(montanhista, 'Itália').

pais_para(comprador, 'Emirados Árabes Unidos').
pais_para(comprador, 'Estados Unidos').
pais_para(comprador, 'Reino Unido').
pais_para(comprador, 'Japão').
pais_para(comprador, 'China').

pais_para(amante_do_frio, 'Noruega').
pais_para(amante_do_frio, 'Finlândia').
pais_para(amante_do_frio, 'Suécia').
pais_para(amante_do_frio, 'Canadá').
pais_para(amante_do_frio, 'Chile').

% Sistema de Perguntas para Identificar o Perfi
:- dynamic resposta/2.

iniciar :-
    clean,
    writeln("Bem-vindo ao sistema de recomendação de viagem!"),
    writeln("Responda 'sim.' ou 'nao.' (com ponto no final) para as perguntas abaixo."),
    perguntar_respostas(Perfil),
    recomendacao(Perfil).

% Perguntas para identificar o perfil
perguntar_respostas(Perfil) :-
    pergunta_pergunta1(Resp1),
    pergunta_pergunta2(Resp2),
    pergunta_pergunta3(Resp3),
    pergunta_pergunta4(Resp4),
    pergunta_pergunta5(Resp5),
    definir_perfil(Resp1, Resp2, Resp3, Resp4, Resp5, Perfil).

% Perguntas do sistema
pergunta_pergunta1(Resp1) :-
    writeln("Você gosta de atividades ao ar livre, como trilhas e escaladas?"),
    read(Resp1).

pergunta_pergunta2(Resp2) :-
    writeln("Você prefere destinos com praias e sol?"),
    read(Resp2).

pergunta_pergunta3(Resp3) :-
    writeln("Você prefere destinos urbanos e modernos, como grandes cidades?"),
    read(Resp3).

pergunta_pergunta4(Resp4) :-
    writeln("Você tem interesse por culinária local e gastronomia?"),
    read(Resp4).

pergunta_pergunta5(Resp5) :-
    writeln("Você prefere lugares tranquilos e com grande foco em natureza?"),
    read(Resp5).

% Definir perfil com base nas respostas
definir_perfil(sim, sim, sim, sim, sim, explorador).
definir_perfil(sim, sim, sim, sim, nao, gourmet).
definir_perfil(sim, sim, nao, sim, sim, praieiro).
definir_perfil(sim, sim, nao, sim, nao, moderno).
definir_perfil(sim, nao, sim, sim, sim, ecologico).
definir_perfil(sim, nao, sim, sim, nao, religioso).
definir_perfil(nao, sim, sim, sim, sim, luxuoso).
definir_perfil(nao, sim, sim, sim, nao, historico).
definir_perfil(nao, nao, sim, sim, sim, montanhista).
definir_perfil(nao, nao, sim, sim, nao, comprador).
definir_perfil(nao, nao, nao, sim, sim, amante_do_frio).
definir_perfil(nao, nao, nao, sim, nao, praieiro).

% Recomendar país com base no perfil
recomendacao(Perfil) :-
    findall(Pais, pais_para(Perfil, Pais), Paises),
    (   Paises \= [] -> 
        writeln("\nCom base nas suas respostas, recomendamos os seguintes países:"),
        forall(member(Pais, Paises), format("- ~w~n", [Pais]))
    ;   writeln("\nInfelizmente, não temos uma recomendação de país para o seu perfil com base nas respostas fornecidas.")
    ).

% Limpar respostas anteriores
clean :- retractall(resposta(_,_)).

