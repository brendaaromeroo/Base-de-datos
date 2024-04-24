#Crear base de datos
CREATE DATABASE IF NOT EXISTS PokemonTCG;
USE PokemonTCG;

#Crear tabla Efecto primero porque no tiene dependencias 
CREATE TABLE Efecto (
    id_efecto INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(30) NOT NULL,
    Descripcion VARCHAR(300),
    Tipo_efecto VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_efecto)
);

#Crear tabla Jugador debe ser creada antes de otras que tienen FKs que apuntan a esta
CREATE TABLE Jugador (
    id_jugador INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(15) NOT NULL,
    Nivel INT UNSIGNED NOT NULL,
    Contraseña VARCHAR(25) NOT NULL,
    Victorias INT UNSIGNED NOT NULL,
    Derrotas INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_jugador)
    #Falta una FK, a InventarioJugador la agegaré después de crear dicha tabla 
);

#Hacer las demás tablas siguiendo el orden para respetar las FKs
CREATE TABLE CartaPokemon (
    id_carta INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(30),
    Nivel INT UNSIGNED NOT NULL,
    HP INT UNSIGNED NOT NULL,
    Tipo VARCHAR(50) NOT NULL,
    EtapaEvolutiva VARCHAR(30),
    Informacion VARCHAR(300),
    Ataque INT UNSIGNED NOT NULL,
    Descripcion VARCHAR(300),
    ReqEnergia INT UNSIGNED NOT NULL,
    Daño INT UNSIGNED NOT NULL,
    Debilidad VARCHAR(30),
    Resistencia VARCHAR(30),
    Retirada INT UNSIGNED NOT NULL,
    Rareza VARCHAR(30),
    id_efecto INT UNSIGNED,
    PRIMARY KEY (id_carta),
    FOREIGN KEY (id_efecto) REFERENCES Efecto(id_efecto)
);

CREATE TABLE CartaEntrenador (
    id_cartaEntrenador INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(30),
    Descripcion VARCHAR(300),
    Tipo VARCHAR(30) NOT NULL,
    Restricciones VARCHAR(300),
    Cantidad INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_cartaEntrenador)
);

CREATE TABLE CartaEnergia (
    id_cartaEnergia INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(30) NOT NULL,
    Descripcion VARCHAR(300),
    Valor_energia INT UNSIGNED NOT NULL,
    Efecto_secundario VARCHAR(300),
    PRIMARY KEY (id_cartaEnergia)
);

CREATE TABLE Deck (
    id_deck INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_jugador INT UNSIGNED NOT NULL,
    Nombre VARCHAR(30),
    Numero_cartas INT UNSIGNED NOT NULL,
    Pokemon_ids TEXT,
    PRIMARY KEY (id_deck),
    FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador)
);

CREATE TABLE InventarioJugador (
    id_inventario INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_jugador INT UNSIGNED NOT NULL,
    id_carta INT UNSIGNED NOT NULL,
    id_deck INT UNSIGNED NOT NULL,
    id_cartaEntrenador INT UNSIGNED NOT NULL,
    id_cartaEnergia INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_inventario),
    FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador),
    FOREIGN KEY (id_carta) REFERENCES CartaPokemon(id_carta),
    FOREIGN KEY (id_deck) REFERENCES Deck(id_deck),
    FOREIGN KEY (id_cartaEntrenador) REFERENCES CartaEntrenador(id_cartaEntrenador),
    FOREIGN KEY (id_cartaEnergia) REFERENCES CartaEnergia(id_cartaEnergia)
);

#Ahora si agregar la FK de InventarioJugador a Jugador
ALTER TABLE Jugador ADD COLUMN id_inventarioJugador INT UNSIGNED;
ALTER TABLE Jugador ADD CONSTRAINT fk_inventarioJugador FOREIGN KEY (id_inventarioJugador) REFERENCES InventarioJugador(id_inventario);

CREATE TABLE Recompensa (
    id_recompensa INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_jugador INT UNSIGNED NOT NULL,
    Descripcion VARCHAR(300),
    Tipo VARCHAR(30) NOT NULL,
    Valor INT UNSIGNED NOT NULL,
    DisponibilidadComienzo DATE,
    DisponibilidadFinal DATE,
    PRIMARY KEY (id_recompensa),
    FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador)
);

CREATE TABLE Partida (
    id_partida INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_jugador1 INT UNSIGNED NOT NULL,
    id_jugador2 INT UNSIGNED NOT NULL,
    id_ganador INT UNSIGNED NOT NULL,
    Reglas INT UNSIGNED NOT NULL,
    Duracion INT UNSIGNED NOT NULL,
    Recompensa_Ganador INT UNSIGNED NOT NULL,
    Recompensa_Perdedor INT UNSIGNED NOT NULL,
    Fecha_Partida TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id_partida),
    FOREIGN KEY (id_jugador1) REFERENCES Jugador(id_jugador),
    FOREIGN KEY (id_jugador2) REFERENCES Jugador(id_jugador),
    FOREIGN KEY (id_ganador) REFERENCES Jugador(id_jugador)
);

CREATE TABLE Turno (
    id_turno INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_partida INT UNSIGNED NOT NULL,
    id_jugador INT UNSIGNED NOT NULL,
    Estado BOOLEAN NOT NULL,
    Daño_dado INT UNSIGNED NOT NULL,
    Daño_recibido INT UNSIGNED NOT NULL,
    Conteo_acciones INT UNSIGNED NOT NULL,
    Cartas_banca INT UNSIGNED NOT NULL,
    Cartas_mano INT UNSIGNED NOT NULL,
    Cartas_energia INT UNSIGNED NOT NULL,
    Cartas_descartadas INT UNSIGNED NOT NULL,
    Cartas_jugadas INT UNSIGNED NOT NULL,
    Cartas_recompensa INT UNSIGNED NOT NULL,
    Cartas_actuales INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_turno),
    FOREIGN KEY (id_partida) REFERENCES Partida(id_partida),
    FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador)
);

CREATE TABLE Juego (
    id_juego INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_partida INT UNSIGNED NOT NULL,
    id_turno INT UNSIGNED NOT NULL,
    estado VARCHAR(30) NOT NULL,
    inicio_juego TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    fin_juego TIMESTAMP,
    ganador INT UNSIGNED,
    PRIMARY KEY (id_juego),
    FOREIGN KEY (id_partida) REFERENCES Partida(id_partida),
    FOREIGN KEY (id_turno) REFERENCES Turno(id_turno),
    FOREIGN KEY (ganador) REFERENCES Jugador(id_jugador)
);


