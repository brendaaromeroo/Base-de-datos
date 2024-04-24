INSERT INTO Efecto (Nombre, Descripcion, Tipo_efecto) VALUES
('Parálisis', 'El Pokémon oponente está paralizado.', 'Estado'),
('Quemadura', 'El Pokémon oponente sufre una quemadura.', 'Estado'),
('Envenenamiento', 'El Pokémon oponente está envenenado.', 'Estado'),
('Curación', 'Recupera una cierta cantidad de HP.', 'Beneficio'),
('Potenciador', 'Aumenta el ataque del Pokémon.', 'Beneficio'),
('Intercambio', 'Permite intercambiar un Pokémon en banca.', 'Estratégico'),
('Doble Energía', 'Proporciona el doble de energía en este turno.', 'Energía'),
('Escudo', 'Protege contra el primer ataque.', 'Defensa'),
('Revivir', 'Permite revivir un Pokémon caído.', 'Beneficio'),
('Furia', 'Aumenta el daño cuando el Pokémon está herido.', 'Estado');

INSERT INTO Jugador (Nombre, Nivel, Contraseña, Victorias, Derrotas) VALUES
('Jugador1', 5, 'pass123', 10, 5),
('Jugador2', 8, 'pass124', 20, 10),
('Jugador3', 3, 'pass125', 5, 15),
('Jugador4', 7, 'pass126', 15, 8),
('Jugador5', 9, 'pass127', 25, 9),
('Jugador6', 2, 'pass128', 3, 7),
('Jugador7', 4, 'pass129', 8, 10),
('Jugador8', 1, 'pass130', 0, 10),
('Jugador9', 6, 'pass131', 12, 6),
('Jugador10', 10, 'pass132', 30, 5);

INSERT INTO CartaPokemon (Nombre, Nivel, HP, Tipo, EtapaEvolutiva, Informacion, Ataque, Descripcion, ReqEnergia, Daño, Debilidad, Resistencia, Retirada, Rareza, id_efecto) VALUES
('Pikachu', 1, 60, 'Eléctrico', 'Básico', 'Ratón eléctrico.', 10, 'Impactrueno.', 1, 20, 'Tierra', 'Ninguna', 1, 'Común', 1),
('Charmander', 1, 50, 'Fuego', 'Básico', 'Lagartija de fuego.', 10, 'Ascuas.', 1, 10, 'Agua', 'Hierba', 1, 'Común', 2),
('Squirtle', 1, 50, 'Agua', 'Básico', 'Tortuga de agua.', 10, 'Pistola agua.', 1, 10, 'Planta', 'Fuego', 1, 'Común', 3),
('Bulbasaur', 1, 50, 'Planta', 'Básico', 'Semilla.', 10, 'Latigazo.', 1, 10, 'Fuego', 'Agua', 1, 'Común', 4),
('Jolteon', 2, 70, 'Eléctrico', 'Evolucionado', 'Rayo veloz.', 20, 'Impactrueno potenciado.', 2, 30, 'Tierra', 'Ninguna', 1, 'Raro', 5),
('Flareon', 2, 70, 'Fuego', 'Evolucionado', 'Llama.', 20, 'Llamarada.', 2, 30, 'Agua', 'Hierba', 1, 'Raro', 6),
('Vaporeon', 2, 70, 'Agua', 'Evolucionado', 'Burbuja.', 20, 'Hidrobomba.', 2, 30, 'Planta', 'Fuego', 1, 'Raro', 7),
('Ivysaur', 2, 60, 'Planta', 'Evolucionado', 'Planta en crecimiento.', 15, 'Hoja afilada.', 2, 25, 'Fuego', 'Agua', 1, 'Raro', 8),
('Venusaur', 3, 80, 'Planta', 'Final', 'Flor dinosaurio.', 25, 'Tormenta floral.', 3, 50, 'Fuego', 'Agua', 2, 'Muy Raro', 9),
('Blastoise', 3, 80, 'Agua', 'Final', 'Tortuga cañón.', 25, 'Hidrocañón.', 3, 50, 'Planta', 'Fuego', 2, 'Muy Raro', 10);

INSERT INTO CartaEntrenador (Nombre, Descripcion, Tipo, Restricciones, Cantidad) VALUES
('Poción', 'Cura 20 puntos de daño de un Pokémon.', 'Item', 'Uso único por turno.', 1),
('Superpoción', 'Cura 50 puntos de daño de un Pokémon.', 'Item', 'Uso único por turno.', 1),
('Revivir', 'Revive a un Pokémon con la mitad de su HP máximo.', 'Item', 'Uso único por partida.', 1),
('Cambio', 'Cambia un Pokémon activo con uno de banca.', 'Estrategia', 'Sin restricciones.', 1),
('Fuerza Extra', 'Aumenta el ataque de un Pokémon en 20 durante un turno.', 'Potenciador', 'Uso único por turno.', 1),
('Protección', 'Evita todo el daño a un Pokémon durante un turno.', 'Defensa', 'Uso único por partida.', 1),
('Intercambio Energético', 'Mueve una energía de un Pokémon a otro.', 'Estrategia', 'Sin restricciones.', 1),
('Recolección', 'Permite buscar una carta de energía en tu mazo.', 'Búsqueda', 'Uso único por turno.', 1),
('Teletransporte', 'Intercambia posición de dos Pokémon en banca.', 'Estrategia', 'Sin restricciones.', 1),
('Doble Poder', 'Duplica el ataque de un Pokémon durante un turno.', 'Potenciador', 'Uso único por partida.', 1);

INSERT INTO CartaEnergia (Nombre, Descripcion, Valor_energia, Efecto_secundario) VALUES
('Energía Básica Fuego', 'Proporciona energía de fuego.', 1, 'Sin efecto secundario.'),
('Energía Básica Agua', 'Proporciona energía de agua.', 1, 'Sin efecto secundario.'),
('Energía Básica Planta', 'Proporciona energía de planta.', 1, 'Sin efecto secundario.'),
('Energía Básica Eléctrica', 'Proporciona energía eléctrica.', 1, 'Sin efecto secundario.'),
('Energía Doble', 'Proporciona dos unidades de energía.', 2, 'Sin efecto secundario.'),
('Energía Especial Fuego', 'Proporciona energía de fuego y aumenta el daño.', 1, 'Aumenta el daño en 10.'),
('Energía Especial Agua', 'Proporciona energía de agua y aumenta la defensa.', 1, 'Aumenta la defensa en 10.'),
('Energía Especial Planta', 'Proporciona energía de planta y cura.', 1, 'Cura 10 puntos de HP cada turno.'),
('Energía Especial Eléctrica', 'Proporciona energía eléctrica y paraliza.', 1, 'Posibilidad de paralizar al oponente.'),
('Energía Triple', 'Proporciona tres unidades de energía.', 3, 'Sin efecto secundario.');

INSERT INTO Deck (id_jugador, Nombre, Numero_cartas, Pokemon_ids) VALUES
(1, 'Equipo Fuego', 60, '1,2,6'),
(2, 'Equipo Agua', 60, '3,7,9'),
(3, 'Equipo Planta', 60, '4,8,10'),
(4, 'Equipo Eléctrico', 60, '1,5,9'),
(5, 'Equipo Mixto', 60, '2,3,4'),
(6, 'Equipo Defensa', 60, '7,8,6'),
(7, 'Equipo Ataque', 60, '1,5,10'),
(8, 'Equipo Rápido', 60, '2,3,5'),
(9, 'Equipo Resistente', 60, '4,6,7'),
(10, 'Equipo Versátil', 60, '1,8,9');


INSERT INTO InventarioJugador (id_jugador, id_carta, id_deck, id_cartaEntrenador, id_cartaEnergia) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2),
(3, 3, 3, 3, 3),
(4, 4, 4, 4, 4),
(5, 5, 5, 5, 5),
(6, 6, 6, 6, 6),
(7, 7, 7, 7, 7),
(8, 8, 8, 8, 8),
(9, 9, 9, 9, 9),
(10, 10, 10, 10, 10);

INSERT INTO Recompensa (id_jugador, Descripcion, Tipo, Valor, DisponibilidadComienzo, DisponibilidadFinal) VALUES
(1, '50 monedas de oro', 'Moneda', 50, '2023-01-01', '2023-12-31'),
(2, '100 puntos de experiencia', 'Experiencia', 100, '2023-01-01', '2023-12-31'),
(3, 'Energía extra', 'Energía', 5, '2023-01-01', '2023-12-31'),
(4, 'Carta rara', 'Carta', 1, '2023-01-01', '2023-12-31'),
(5, 'Doble experiencia en la próxima partida', 'Boost', 1, '2023-01-01', '2023-12-31'),
(6, 'Pociones de curación', 'Item', 3, '2023-01-01', '2023-12-31'),
(7, 'Energía especial', 'Energía', 2, '2023-01-01', '2023-12-31'),
(8, 'Acceso a torneo exclusivo', 'Acceso', 1, '2023-01-01', '2023-12-31'),
(9, 'Skins exclusivas para cartas', 'Skin', 1, '2023-01-01', '2023-12-31'),
(10, 'Bonificación de victoria', 'Bonificación', 50, '2023-01-01', '2023-12-31');

INSERT INTO Partida (id_jugador1, id_jugador2, id_ganador, Reglas, Duracion, Recompensa_Ganador, Recompensa_Perdedor, Fecha_Partida) VALUES
(1, 2, 1, 1, 30, 100, 50, CURRENT_TIMESTAMP),
(3, 4, 3, 1, 45, 100, 50, CURRENT_TIMESTAMP),
(5, 6, 5, 1, 50, 100, 50, CURRENT_TIMESTAMP),
(7, 8, 7, 1, 60, 100, 50, CURRENT_TIMESTAMP),
(9, 10, 9, 1, 35, 100, 50, CURRENT_TIMESTAMP),
(2, 1, 2, 1, 40, 100, 50, CURRENT_TIMESTAMP),
(4, 3, 4, 1, 55, 100, 50, CURRENT_TIMESTAMP),
(6, 5, 6, 1, 25, 100, 50, CURRENT_TIMESTAMP),
(8, 7, 8, 1, 30, 100, 50, CURRENT_TIMESTAMP),
(10, 9, 10, 1, 45, 100, 50, CURRENT_TIMESTAMP);

INSERT INTO Turno (id_partida, id_jugador, Estado, Daño_dado, Daño_recibido, Conteo_acciones, Cartas_banca, Cartas_mano, Cartas_energia, Cartas_descartadas, Cartas_jugadas, Cartas_recompensa, Cartas_actuales) VALUES
(1, 1, TRUE, 20, 10, 3, 3, 5, 2, 1, 3, 1, 5),
(1, 2, FALSE, 10, 20, 3, 2, 4, 2, 2, 2, 1, 4),
(2, 3, TRUE, 30, 5, 3, 4, 6, 3, 0, 4, 2, 6),
(2, 4, FALSE, 5, 30, 3, 1, 3, 1, 3, 1, 1, 3),
(3, 5, TRUE, 15, 15, 3, 3, 5, 2, 1, 3, 1, 5),
(3, 6, FALSE, 15, 15, 3, 2, 4, 2, 2, 2, 1, 4),
(4, 7, TRUE, 25, 0, 3, 4, 6, 3, 0, 4, 2, 6),
(4, 8, FALSE, 0, 25, 3, 1, 3, 1, 3, 1, 1, 3),
(5, 9, TRUE, 5, 35, 3, 3, 5, 2, 1, 3, 1, 5),
(5, 10, FALSE, 35, 5, 3, 2, 4, 2, 2, 2, 1, 4);

INSERT INTO Juego (id_partida, id_turno, estado, inicio_juego, fin_juego, ganador) VALUES
(1, 1, 'Activo', '2023-04-01 10:00:00', NULL, NULL),
(2, 3, 'Finalizado', '2023-04-01 11:00:00', '2023-04-01 11:45:00', 3),
(3, 5, 'Finalizado', '2023-04-02 10:00:00', '2023-04-02 10:50:00', 5),
(4, 7, 'Activo', '2023-04-03 12:00:00', NULL, NULL),
(5, 9, 'Finalizado', '2023-04-03 14:00:00', '2023-04-03 14:35:00', 9),
(6, 2, 'Activo', '2023-04-04 16:00:00', NULL, NULL),
(7, 4, 'Finalizado', '2023-04-04 17:00:00', '2023-04-04 17:55:00', 4),
(8, 6, 'Activo', '2023-04-05 18:00:00', NULL, NULL),
(9, 8, 'Finalizado', '2023-04-05 19:00:00', '2023-04-05 19:30:00', 8),
(10, 10, 'Finalizado', '2023-04-06 20:00:00', '2023-04-06 20:45:00', 10);

