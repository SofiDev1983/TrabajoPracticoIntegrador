Algoritmo  Menu_Juegos
	Definir SeguirJugando Como Entero
	Definir OpcionJuego Como Entero
	
	SeguirJugando <- 1
	
	Hacer
		Escribir "SELECCIONE EL JUEGO QUE DESEA JUGAR"
		Mostrar "1 - juego de la memoria"
		Mostrar "2 - Piedra, Papel y Tijera"
		Mostrar "3 - Juego de Caballos"
		Mostrar "4 - Numero prohibido"
		leer OpcionJuego
		
		
		Segun  OpcionJuego Hacer
			1: JuegoDeLaMemoria()
			2: PiedraPapelTijera()
			3: Carrera_Caballos()	
			4: Numero_Prohibido()	
		FinSegun
		
		Escribir  "Desea seguir jugando? 1 (si) 2 (no)"
		Leer  SeguirJugando
		
		Limpiar Pantalla
	Hasta Que SeguirJugando = 2
	
FinAlgoritmo

Funcion Numero_Prohibido ()
	Definir cantJugadores, i, j, k, puntosTurnoJug1, puntosTurnoJug2, puntosTurnoJug3, puntosTurnoJug4, puntosTotalesJug1, puntosTotalesJug2, puntosTotalesJug3, puntosTotalesJug4, dado como entero;
	Definir ceroAcum, unoAcum, dosAcum, tresAcum, cuatroAcum, cincoAcum, seisAcum, elNumeroProhibido como entero;
	Definir jug1, jug2, jug3, jug4, respuesta como caracter;
	dado<- 0;
	puntosTurnoJug1<- 0;
	puntosTurnoJug2<- 0;
	puntosTurnoJug3<- 0;
	puntosTurnoJug4<- 0;
	puntosTotalesJug1<- 0;
	puntosTotalesJug2<- 0;
	puntosTotalesJug3<- 0;
	puntosTotalesJug4<- 0;
	
	ceroAcum <- 0;
	unoAcum <- 0;
	dosAcum <- 0;
	tresAcum <- 0;
	cuatroAcum <- 0;
	cincoAcum <- 0;
	seisAcum <- 0;
	elNumeroProhibido <- 0;
	
	
	Escribir "¿Cuántos jugadores son? (mín 2 y máximo 4)";
	leer cantJugadores;
	mientras cantJugadores >4 o cantJugadores <2 hacer
		escribir "el límite máximo de jugadores es 4 y el límite mínimo es 1, escriba nuevamente la cantidad de jugadores"
		leer cantJugadores;
		
	Finmientras
	
	//ACÁ SE VAN A PONER LOS NOMBRES DE LOS JUGADORES
	para i=1 hasta cantJugadores con paso 1 hacer
		Escribir "Nombre del jugador: ", i;
		Si i==1 entonces
			leer jug1;
		sino
			si i==2 entonces
				leer jug2;
			sino
				si i==3 entonces
					leer jug3
				sino
					si i==4 entonces
						leer jug4;
					Finsi
				Finsi
			Finsi
		Finsi
	Finpara
	
	Escribir "ARRANCA EL JUEGO SUERTE A TOD@S";
	
	// CÓDIGO DEL JUEGO EN SÍ
	mientras puntosTotalesJug1 <= 80 y puntosTotalesJug2 <= 80 y puntosTotalesJug3 <= 80 y puntosTotalesJug4 <= 80
		
		//JUGADOR 1
		para j=1 hasta cantJugadores con paso 1 hacer
			Si j==1 entonces
				Escribir "Es el turno de: ", jug1;
				Para k=0 hasta 75 con paso 1 hacer
					
					dado <- azar(6) +1;
					
					mostrar "salió un: ", dado;
					puntosTurnoJug1 <- puntosTurnoJug1 + dado;
					puntosTotalesJug1 <- puntosTotalesJug1 + dado;
					
					segun dado hacer
						1: unoAcum <- unoAcum + 1;
						2: dosAcum <- dosAcum + 1;
						3: tresAcum <- tresAcum + 1;
						4: cuatroAcum <- cuatroAcum + 1;
						5: cincoAcum <- cincoAcum + 1;
						6: seisAcum <- seisAcum + 1;
						de otro modo:
							ceroAcum <- ceroAcum +1;
					Finsegun
					Si unoAcum >= 3 entonces
						elNumeroProhibido <- 1;
					sino
						si dosAcum >= 3 entonces
							elNumeroProhibido <- 2;
						sino 
							si tresAcum >= 3 entonces
								elNumeroProhibido <- 3;
							sino
								si cuatroAcum >= 3 entonces
									elNumeroProhibido <- 4;
								sino
									si cincoAcum >= 3 entonces
										elNumeroProhibido <- 5;
									sino
										si seisAcum >= 3 entonces
											elNumeroProhibido <- 6;
										sino
											si ceroAcum >= 3 entonces
												elNumeroProhibido <- 0;
											Finsi
										Finsi
									Finsi
								Finsi
							Finsi
						Finsi
					Finsi
					mostrar "1: ", unoAcum, "   2: ", dosAcum, "   3: ", tresAcum, "   4: ", cuatroAcum, "   5: ", cincoAcum, "   6: ", seisAcum, "   0: ", ceroAcum;
					Si unoAcum >= 3 o dosAcum >= 3 o tresAcum >= 3 o cuatroAcum >= 3 o cincoAcum >= 3 o seisAcum >= 3 o ceroAcum >= 3 entonces
						
						escribir "fin del turno de: ", jug1, ", PERDIÓ LOS PUNTOS DE ESTE TURNO porque salió el número: ", elNumeroProhibido, " tres veces";
						ceroAcum <- 0;
						unoAcum <- 0;
						dosAcum <- 0;
						tresAcum <- 0;
						cuatroAcum <- 0;
						cincoAcum <- 0;
						seisAcum <- 0;
						puntosTotalesJug1 <- puntosTotalesJug1 - puntosTurnoJug1;
						puntosTurnoJug1 <- 0;
						MOSTRAR " "
						mostrar "          \|||/         "
						mostrar "          (o o)         "
						MOSTRAR " ------ooO-(_)-Ooo------"
						MOSTRAR " | PERDISTE LOS PUNTOS  | "
						MOSTRAR " -----------------------"
						MOSTRAR "         |__|__|        "
						MOSTRAR "          || ||         "
						MOSTRAR "         ooO Ooo        "
						MOSTRAR " "
						k<-75;
						
					Sino 
						
						
						escribir jug1, " ¿desea tirar nuevamente? (s/n)";
						leer respuesta;
						Si respuesta == "n" O respuesta == "N" o respuesta == "no" o respuesta == "NO" entonces
							escribir "fin del turno de: ", jug1;
							ceroAcum <- 0;
							unoAcum <- 0;
							dosAcum <- 0;
							tresAcum <- 0;
							cuatroAcum <- 0;
							cincoAcum <- 0;
							seisAcum <- 0;
							k<-75;
						Finsi
					Finsi			
				Finpara
				
				mostrar "Puntos acumulados en este turno por jug: ", jug1, ": ", puntosTurnoJug1, " y puntos totales: ", puntosTotalesJug1;
				puntosTurnoJug1 <- 0;
				mostrar "";
				mostrar "";
				mostrar "";
				mostrar "";
			sino
				
				//JUGADOR 2
				
				si j==2 entonces
					Escribir "Es el turno de: ", jug2;
					Para k=0 hasta 75 con paso 1 hacer
						
						dado <- azar(6) +1;
						
						mostrar "salió un: ", dado;
						puntosTurnoJug2 <- puntosTurnoJug2 + dado;
						puntosTotalesJug2 <- puntosTotalesJug2 + dado;
						
						segun dado hacer
							1: unoAcum <- unoAcum + 1;
							2: dosAcum <- dosAcum + 1;
							3: tresAcum <- tresAcum + 1;
							4: cuatroAcum <- cuatroAcum + 1;
							5: cincoAcum <- cincoAcum + 1;
							6: seisAcum <- seisAcum + 1;
							de otro modo:
								ceroAcum <- ceroAcum +1;
						Finsegun
						Si unoAcum >= 3 entonces
							elNumeroProhibido <- 1;
						sino
							si dosAcum >= 3 entonces
								elNumeroProhibido <- 2;
							sino 
								si tresAcum >= 3 entonces
									elNumeroProhibido <- 3;
								sino
									si cuatroAcum >= 3 entonces
										elNumeroProhibido <- 4;
									sino
										si cincoAcum >= 3 entonces
											elNumeroProhibido <- 5;
										sino
											si seisAcum >= 3 entonces
												elNumeroProhibido <- 6;
											sino
												si ceroAcum >= 3 entonces
													elNumeroProhibido <- 0;
												Finsi
											Finsi
										Finsi
									Finsi
								Finsi
							Finsi
						Finsi
						mostrar "1: ", unoAcum, "   2: ", dosAcum, "   3: ", tresAcum, "   4: ", cuatroAcum, "   5: ", cincoAcum, "   6: ", seisAcum, "   0: ", ceroAcum;
						Si unoAcum >= 3 o dosAcum >= 3 o tresAcum >= 3 o cuatroAcum >= 3 o cincoAcum >= 3 o seisAcum >= 3 o ceroAcum >= 3 entonces
							
							
							escribir "fin del turno de: ", jug2, ", PERDIÓ LOS PUNTOS DE ESTE TURNO porque salió el número: ", elNumeroProhibido, " tres veces";
							ceroAcum <- 0;
							unoAcum <- 0;
							dosAcum <- 0;
							tresAcum <- 0;
							cuatroAcum <- 0;
							cincoAcum <- 0;
							seisAcum <- 0;
							puntosTotalesJug2 <- puntosTotalesJug2 - puntosTurnoJug2;
							puntosTurnoJug2 <- 0;
							MOSTRAR " "
							mostrar "          \|||/         "
							mostrar "          (o o)         "
							MOSTRAR " ------ooO-(_)-Ooo------"
							MOSTRAR " | PERDISTE LOS PUNTOS  | "
							MOSTRAR " -----------------------"
							MOSTRAR "         |__|__|        "
							MOSTRAR "          || ||         "
							MOSTRAR "         ooO Ooo        "
							MOSTRAR " "
							k<-75;
							
						Sino 
							
							
							escribir jug2, " ¿desea tirar nuevamente? (s/n)";
							leer respuesta;
							Si respuesta == "n" O respuesta == "N" o respuesta == "no" o respuesta == "NO" entonces
								escribir "fin del turno de: ", jug2;
								ceroAcum <- 0;
								unoAcum <- 0;
								dosAcum <- 0;
								tresAcum <- 0;
								cuatroAcum <- 0;
								cincoAcum <- 0;
								seisAcum <- 0;
								k<-75;
							Finsi
						Finsi			
					Finpara
					mostrar "Puntos acumulados en este turno por jug: ", jug2, ": ", puntosTurnoJug2, " y puntos totales: ", puntosTotalesJug2;
					puntosTurnoJug2 <- 0;
					mostrar "";
					mostrar "";
					mostrar "";
					mostrar "";
				sino
					
					//JUGADOR 3			
					
					si j==3 entonces
						Escribir "Es el turno de: ", jug3;
						Para k=0 hasta 75 con paso 1 hacer
							
							dado <- azar(6) +1;
							
							mostrar "salió un: ", dado;
							puntosTurnoJug3 <- puntosTurnoJug3 + dado;
							puntosTotalesJug3 <- puntosTotalesJug3 + dado;
							
							segun dado hacer
								1: unoAcum <- unoAcum + 1;
								2: dosAcum <- dosAcum + 1;
								3: tresAcum <- tresAcum + 1;
								4: cuatroAcum <- cuatroAcum + 1;
								5: cincoAcum <- cincoAcum + 1;
								6: seisAcum <- seisAcum + 1;
								de otro modo:
									ceroAcum <- ceroAcum +1;
							Finsegun
							Si unoAcum >= 3 entonces
								elNumeroProhibido <- 1;
							sino
								si dosAcum >= 3 entonces
									elNumeroProhibido <- 2;
								sino 
									si tresAcum >= 3 entonces
										elNumeroProhibido <- 3;
									sino
										si cuatroAcum >= 3 entonces
											elNumeroProhibido <- 4;
										sino
											si cincoAcum >= 3 entonces
												elNumeroProhibido <- 5;
											sino
												si seisAcum >= 3 entonces
													elNumeroProhibido <- 6;
												sino
													si ceroAcum >= 3 entonces
														elNumeroProhibido <- 0;
													Finsi
												Finsi
											Finsi
										Finsi
									Finsi
								Finsi
							Finsi
							mostrar "1: ", unoAcum, "   2: ", dosAcum, "   3: ", tresAcum, "   4: ", cuatroAcum, "   5: ", cincoAcum, "   6: ", seisAcum, "   0: ", ceroAcum;
							Si unoAcum >= 3 o dosAcum >= 3 o tresAcum >= 3 o cuatroAcum >= 3 o cincoAcum >= 3 o seisAcum >= 3 o ceroAcum >= 3 entonces
								
								
								escribir "fin del turno de: ", jug3, ", PERDIÓ LOS PUNTOS DE ESTE TURNO porque salió el número: ", elNumeroProhibido, " tres veces";
								ceroAcum <- 0;
								unoAcum <- 0;
								dosAcum <- 0;
								tresAcum <- 0;
								cuatroAcum <- 0;
								cincoAcum <- 0;
								seisAcum <- 0;
								puntosTotalesJug3 <- puntosTotalesJug3 - puntosTurnoJug3;
								puntosTurnoJug3 <- 0;
								MOSTRAR " "
								mostrar "          \|||/         "
								mostrar "          (o o)         "
								MOSTRAR " ------ooO-(_)-Ooo------"
								MOSTRAR " | PERDISTE LOS PUNTOS  | "
								MOSTRAR " -----------------------"
								MOSTRAR "         |__|__|        "
								MOSTRAR "          || ||         "
								MOSTRAR "         ooO Ooo        "
								MOSTRAR " "
								k<-75;
								
							Sino 
								
								
								escribir jug3, " ¿desea tirar nuevamente? (s/n)";
								leer respuesta;
								Si respuesta == "n" O respuesta == "N" o respuesta == "no" o respuesta == "NO" entonces
									escribir "fin del turno de: ", jug3;
									ceroAcum <- 0;
									unoAcum <- 0;
									dosAcum <- 0;
									tresAcum <- 0;
									cuatroAcum <- 0;
									cincoAcum <- 0;
									seisAcum <- 0;
									k<-75;
								Finsi
							Finsi			
						Finpara
						mostrar "Puntos acumulados en este turno por jug: ", jug3, ": ", puntosTurnoJug3, " y puntos totales: ", puntosTotalesJug3;
						puntosTurnoJug3 <- 0;
						mostrar "";
						mostrar "";
						mostrar "";
						mostrar "";
					sino
						
						//JUGADOR 4
						
						si j==4 entonces
							Escribir "Es el turno de: ", jug4;
							Para k=0 hasta 75 con paso 1 hacer
								
								dado <- azar(6) +1;
								
								mostrar "salió un: ", dado;
								puntosTurnoJug4 <- puntosTurnoJug4 + dado;
								puntosTotalesJug4 <- puntosTotalesJug4 + dado;
								
								segun dado hacer
									1: unoAcum <- unoAcum + 1;
									2: dosAcum <- dosAcum + 1;
									3: tresAcum <- tresAcum + 1;
									4: cuatroAcum <- cuatroAcum + 1;
									5: cincoAcum <- cincoAcum + 1;
									6: seisAcum <- seisAcum + 1;
									de otro modo:
										ceroAcum <- ceroAcum +1;
								Finsegun
								Si unoAcum >= 3 entonces
									elNumeroProhibido <- 1;
								sino
									si dosAcum >= 3 entonces
										elNumeroProhibido <- 2;
									sino 
										si tresAcum >= 3 entonces
											elNumeroProhibido <- 3;
										sino
											si cuatroAcum >= 3 entonces
												elNumeroProhibido <- 4;
											sino
												si cincoAcum >= 3 entonces
													elNumeroProhibido <- 5;
												sino
													si seisAcum >= 3 entonces
														elNumeroProhibido <- 6;
													sino
														si ceroAcum >= 3 entonces
															elNumeroProhibido <- 0;
														Finsi
													Finsi
												Finsi
											Finsi
										Finsi
									Finsi
								Finsi
								mostrar "1: ", unoAcum, "   2: ", dosAcum, "   3: ", tresAcum, "   4: ", cuatroAcum, "   5: ", cincoAcum, "   6: ", seisAcum, "   0: ", ceroAcum;
								Si unoAcum >= 3 o dosAcum >= 3 o tresAcum >= 3 o cuatroAcum >= 3 o cincoAcum >= 3 o seisAcum >= 3 o ceroAcum >= 3 entonces
									
									
									escribir "fin del turno de: ", jug4, ", PERDIÓ LOS PUNTOS DE ESTE TURNO porque salió el número: ", elNumeroProhibido, " tres veces";
									ceroAcum <- 0;
									unoAcum <- 0;
									dosAcum <- 0;
									tresAcum <- 0;
									cuatroAcum <- 0;
									cincoAcum <- 0;
									seisAcum <- 0;
									puntosTotalesJug4 <- puntosTotalesJug4 - puntosTurnoJug4;
									puntosTurnoJug4 <- 0;
									MOSTRAR " "
									mostrar "          \|||/         "
									mostrar "          (o o)         "
									MOSTRAR " ------ooO-(_)-Ooo------"
									MOSTRAR " | PERDISTE LOS PUNTOS  | "
									MOSTRAR " -----------------------"
									MOSTRAR "         |__|__|        "
									MOSTRAR "          || ||         "
									MOSTRAR "         ooO Ooo        "
									MOSTRAR " "
									k<-75;
									
								Sino 
									
									
									escribir jug4, " ¿desea tirar nuevamente? (s/n)";
									leer respuesta;
									Si respuesta == "n" O respuesta == "N" o respuesta == "no" o respuesta == "NO" entonces
										escribir "fin del turno de: ", jug4;
										ceroAcum <- 0;
										unoAcum <- 0;
										dosAcum <- 0;
										tresAcum <- 0;
										cuatroAcum <- 0;
										cincoAcum <- 0;
										seisAcum <- 0;
										k<-75;
									Finsi
								Finsi			
							Finpara
							mostrar "Puntos acumulados en este turno por jug: ", jug4, ": ", puntosTurnoJug4, " y puntos totales: ", puntosTotalesJug4;
							puntosTurnoJug4 <- 0;
							mostrar "";
							mostrar "";
							mostrar "";
							mostrar "";
						Finsi
					Finsi
				Finsi
			Finsi
		Finpara
	Fin mientras
	
	Mostrar "EL GANADOR DEL JUEGO - EL NÚMERO PROHIBIDO - ES: ";
	Si puntosTotalesJug1 > puntosTotalesJug2 y puntosTotalesJug1 > puntosTotalesJug3 y puntosTotalesJug1 > puntosTotalesJug4 entonces
		mostrar jug1, ", ya que sumó un total de: ", puntosTotalesJug1;
	sino 
		si puntosTotalesJug2 > puntosTotalesJug1 y puntosTotalesJug2 > puntosTotalesJug3 y puntosTotalesJug2 > puntosTotalesJug4 entonces
			mostrar jug2, ", ya que sumó un total de: ", puntosTotalesJug2;
		sino 
			si puntosTotalesJug3 > puntosTotalesJug1 y puntosTotalesJug3 > puntosTotalesJug2 y puntosTotalesJug3 > puntosTotalesJug4 entonces
				mostrar jug3, ", ya que sumó un total de: ", puntosTotalesJug3;
			sino 
				si puntosTotalesJug4 > puntosTotalesJug1 y puntosTotalesJug4 > puntosTotalesJug2 y puntosTotalesJug4 > puntosTotalesJug3 entonces
					mostrar jug4, ", ya que sumó un total de: ", puntosTotalesJug4;
				Finsi
			Finsi
		Finsi
	Finsi

FinFuncion

Funcion Carrera_Caballos
	Definir random1, random2, random3, random4, ingreso, acum1, acum2, acum3, acum4, ganador, turno Como Entero
	Definir caballo1, caballo2, caballo3, caballo4 Como Caracter
	
	Escribir "Ingrese el caballo por el que desea apostar"
	Escribir "1- Caballo La Negrita"
	Escribir "2- Caballo San Jose"
	Escribir "3- Caballo El Tornado"
	Escribir "4- Caballo El Bromas"
	
	Repetir
		Leer ingreso
		Borrar Pantalla
		Si ingreso < 1 o ingreso > 4 Entonces
			Escribir "Error de ingreso... Debe elejir entre 1 y 4"
			Escribir ""
			Escribir "Ingrese el caballo por el que desea apostar"
			Escribir "1- Caballo La Negrita"
			Escribir "2- Caballo San Jose"
			Escribir "3- Caballo El Tornado"
			Escribir "4- Caballo El Bromas"
		FinSi
	Hasta Que ingreso  >= 1 y ingreso <= 4
	
	Dimension caballo1[12]
	Dimension caballo2[12]
	Dimension caballo3[12]
	Dimension caballo4[12]
	
	acum1 = 0
	acum2 = 0
	acum3 = 0
	acum4 = 0
	
	turno = 1
	Repetir
		Borrar Pantalla
		random1 = Aleatorio(1,2)
		random2 = Aleatorio(1,2)
		random3 = Aleatorio(1,2)
		random4 = Aleatorio(1,2)
		
		para  i = 1 hasta 12  Hacer
			caballo1[i] = " - "
			si i == 12 Entonces
				caballo1[i] = " | Meta "
			sino 
				si i == 11 Entonces
					caballo1[i] = " - "
				FinSi
			FinSi
		FinPara
		para i = 1 hasta 12  Hacer
			caballo2[i] = " - "
			si i == 12 Entonces
				caballo2[i] = " | Meta "
			sino 
				si i == 11 Entonces
					caballo2[i] = " - "
				FinSi
			FinSi
		FinPara
		para i = 1 hasta 12  Hacer
			caballo3[i] = " - "
			si i == 12 Entonces
				caballo3[i] = " | Meta "
			sino 
				si i == 11 Entonces
					caballo3[i] = " - "
				FinSi
			FinSi
		FinPara
		para i = 1 hasta 12  Hacer
			caballo4[i] = " - "
			si i == 12 Entonces
				caballo4[i] = " | Meta "
			sino 
				si i == 11 Entonces
					caballo4[i] = " - "
				FinSi
			FinSi
		FinPara
		
		
		para i = 1 hasta 1 Hacer
			acum1 = random1 + acum1
			acum2 = random2 + acum2
			acum3 = random3 + acum3
			acum4 = random4 + acum4
		FinPara
		
		
		
		para  i = 1 hasta acum1  Hacer
			caballo1[i] = " X "
		FinPara
		
		para i = 1 hasta acum2  Hacer
			caballo2[i] = " X "
		FinPara
		para  i= 1 hasta acum3  Hacer
			caballo3[i] = " X "
		FinPara
		para i = 1 hasta acum4  Hacer
			caballo4[i] = " X "
		FinPara
		
		Escribir "Ronda N ", turno
		Escribir ""
		
		si  acum4 <= 12
			Escribir "            -------------------------------"
			Escribir " Caballo 1  " Sin Saltar
			para  i = 1 hasta 12  Hacer
				Escribir caballo1[i]  Sin Saltar
			FinPara
			Escribir ""
			Escribir "            -------------------------------"
			esperar tecla
		FinSi
		si  acum1 <= 12
			Escribir "            -------------------------------"
			Escribir " Caballo 2  " Sin Saltar
			para i = 1 hasta 12  Hacer
				Escribir caballo2[i] Sin Saltar
			FinPara
			Escribir ""
			Escribir "            -------------------------------"
			esperar tecla
		FinSi
		
		
		si  acum2 <= 12
			Escribir "            -------------------------------"
			Escribir " Caballo 3  " Sin Saltar
			para i = 1 hasta 12  Hacer
				Escribir caballo3[i] Sin Saltar
			FinPara
			Escribir ""
			Escribir "            -------------------------------"
			esperar tecla
		FinSi
		
		
		si  acum4 <= 12	
			Escribir "            -------------------------------"
			Escribir " Caballo 4  " Sin Saltar
			para i= 1 hasta 12  Hacer
				Escribir caballo4[i]  Sin Saltar
			FinPara
			Escribir ""
			Escribir "            -------------------------------"
			esperar tecla
		FinSi
		
		turno = turno + 1
	Hasta Que acum1 >= 10 o acum2 >= 10 o acum3 >= 10 o acum4 >= 10
	
	
	si acum1 > acum2 y  acum1 > acum3 y  acum1 > acum4 Entonces
		Escribir "GANADOR Caballo 1- La Negrita"
	SiNo
		si acum2 > acum1 y  acum2 > acum3 y  acum2 > acum4 Entonces
			
			Escribir "GANADOR Caballo 2- San Jose"
		SiNo
			si acum3 > acum1 y  acum3 > acum2 y  acum3 > acum4 Entonces
				Escribir "GANADOR Caballo 3- El Tornado"
			SiNo 
				si acum4 > acum1 y  acum4 > acum2 y  acum4 > acum3 Entonces
					Escribir "GANADOR Caballo 4- El Bromas"
				sino
					si acum1 == acum2  y acum1 == acum3 Entonces
						Escribir "EMPATE entre el Caballo 1, 2 y 3"
					SiNo
						si acum1 == acum2  y acum1 == acum4 Entonces
							Escribir "EMPATE entre el Caballo 1, 2 y 4"
						SiNo
							si acum2 == acum3  y acum2 == acum4 Entonces
								Escribir "EMPATE entre el Caballo 2, 3 y 4"
							SiNo
								si acum1 == acum3  y acum1 == acum4 Entonces
									Escribir "EMPATE entre el Caballo 1, 3 y 4"
								SiNo
									si acum1 == acum2 Entonces
										Escribir "EMPATE entre el Caballo 1 y 2"
									SiNo
										si acum1 == acum3 Entonces
											Escribir "EMPATE entre el Caballo 1 y 3"
										SiNo
											si acum1 == acum4 Entonces
												Escribir "EMPATE entre el Caballo 1 y 4"
											SiNo
												si acum2 == acum3 Entonces
													Escribir "EMPATE entre el Caballo 2 y 3"
												SiNo
													si acum2 == acum4 Entonces
														Escribir "EMPATE entre el Caballo 2 y 4"
													SiNo
														si acum3 == acum4 Entonces
															Escribir "EMPATE entre el Caballo 3 y 4"
														SiNo
															Escribir "LOS 4 CABALLOS EMPATARON"
														FinSi
													FinSi
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					finsi 
				finsi
			FinSi
		FinSi
	FinSi
	
	
	
	Escribir ""

FinFuncion

Funcion PiedraPapelTijera()
	Definir piedra, papel, tijera, partidasTotales, partida1, partida2, i, eleccion1, eleccion2,elegir Como Entero;
	piedra <-1;
	papel <- 2;
	tijera <- 3;
    elegir <- Aleatorio(1,3)
	Escribir "Ingrese la cantidad de partidas que desea jugar:";
	Leer partidasTotales;
	// Comprobamos que las partidas que ingresaron sean mayores a cero
	Si partidasTotales > 0 Entonces;
		i<- 0; // Creamos una variable numerica para ejecutar el juego durante las veces que querramos
		Mientras i < partidasTotales Hacer // Mientras i sean menor a las partidas totales, ejecutamos el juego
			Escribir ""; // Imprime espacios vacios para limpiar la consola
			Escribir "";
			Escribir "";
			Escribir "***NUEVO JUEGO***";
			// Pide al jugador 1 que seleccione una opcion
			Escribir "Jugador 1 - Seleccione la opcion que desea: ";
			Escribir "Piedra = 1 - Papel = 2 - Tijera = 3";
			Leer eleccion1;
			// Pide al jugador 2 que seleccione una opcion
			Escribir  "seleccion de la compu: " elegir;
			//lo agrgeue
			//
			// Variable que guarda el valor de la eleccion del jugador 2
			//cambiar x nombre??
			// Ahora se compara segun las reglas del juego
			Si eleccion1 == elegir Entonces
				Escribir "EMPATE";
			SiNo
				// En caso de haber elegido piedra contra tijera
				Si eleccion1 == piedra y elegir == papel Entonces
					Escribir "Gana jugador 2";
					partida2 <- partida2 + 1; // Aumentamos en uno la cantidad de partidas que gano el jugador 2
				Sino 
					// En caso de haber elegido Piedra contra tijera
					Si eleccion1 == piedra y elegir == tijera Entonces
						Escribir "Gana jugador 1";
						partida1 <- partida1 + 1; // Aumentamos en uno las partidas que gano el jugador 1
					SiNo
						// En caso de que jugador 2 selecciono piedra y el 1 selecciono papel 
						Si elegir == piedra y eleccion1 == papel Entonces
							Escribir "Gana jugador 1";
							partida1 <- partida1 + 1; // Aumentamos en uno la cantidad de partidas que gano el jugador 1
						SiNo
							Si elegir == piedra y eleccion1 == tijera Entonces
								Escribir "Gana jugador 2";
								partida2 <- partida2 + 1;
							SiNo
								Si eleccion1 == papel y elegir == tijera Entonces
									Escribir "Gana jugador 2";
									partida2 <- partida2 + 1;
								SiNo 
									Si elegir == papel y eleccion1 == tijera Entonces
										Escribir "Gana jugador 1";
										partida1 <- partida1 + 1;
										
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
			// Aumenta en uno a i para seguir recorriendo el mientras y jugar todas las partidas solicitadas
			i <- i + 1;
			
		FinMientras
		// Indica por pantalla la cantidad de partidas que gano cada jugador
		Escribir "El jugador 1 gano: ", partida1, " partidas";
		Escribir "El jugador 2 gano: ", partida2, " partidas";
	SiNo
		Escribir "El numero que ingreso no es valido.";
	FinSi
FinFuncion

Funcion JuegoDeLaMemoria
	Definir arrayJuegoMemoria, numeroQueSalio, f, primerNumero, segundoNumero, tercerNumero, cuartoNumero, quintoNumero, sextoNumero, septimoNumero, octavoNumero, novenoNumero, decimoNumero como entero
	Dimension arrayJuegoMemoria[10];
	
	Para f=0 hasta 9 con paso 1 hacer;
		arrayJuegoMemoria[f] <-azar(9);
		//mostrar arrayJuegoMemoria[f];
	Finpara
	
	
	
	Para f=0 hasta 9 con paso 1 hacer;
		//Repetir 
		Si f==0 entonces // PARA ADIVINAR EL PRIMER NÚMERO
			Mostrar arrayJuegoMemoria[0];
			esperar 5 segundos
			borrarpantalla
			
			Escribir "Ingrese el número completo que vio hasta recién: ";
			Leer primerNumero;
			Si primerNumero == arrayJuegoMemoria[0] entonces
				Escribir "Bien, le pegaste"
			Sino 
				Escribir "Le erraste giiiiiil";
			Finsi
		sino		
			Si f==1 entonces // PARA ADIVINAR EL SEGUNDO NÚMERO
				Mostrar arrayJuegoMemoria[0];
				Mostrar arrayJuegoMemoria[1];
				esperar 5 segundos
				borrarpantalla
				
				Escribir "Ingrese el número completo que vio hasta recién: ";
				Leer primerNumero;
				Leer segundoNumero;
				Si primerNumero == arrayJuegoMemoria[0] y segundoNumero  == arrayJuegoMemoria[1] entonces
					Escribir "Bien, le pegaste"
				Sino 
					Escribir "Le erraste giiiiiil";
				Finsi
			sino
				Si f==2 entonces // PARA ADIVINAR EL TERCER NÚMERO
					Mostrar arrayJuegoMemoria[0];
					Mostrar arrayJuegoMemoria[1];
					Mostrar arrayJuegoMemoria[2];
					
					esperar 5 segundos
					borrarpantalla
					
					Escribir "Ingrese el número completo que vio hasta recién: ";
					Leer primerNumero;
					Leer segundoNumero;
					Leer tercerNumero;			
					Si primerNumero == arrayJuegoMemoria[0] y segundoNumero  == arrayJuegoMemoria[1] y tercerNumero == arrayJuegoMemoria[2] entonces
						Escribir "Bien, le pegaste"
					Sino 
						Escribir "Le erraste giiiiiil";
					Finsi
				sino
					Si f==3 entonces // PARA ADIVINAR EL CUARTO NÚMERO
						Mostrar arrayJuegoMemoria[0];
						Mostrar arrayJuegoMemoria[1];
						Mostrar arrayJuegoMemoria[2];
						Mostrar arrayJuegoMemoria[3];
						
						esperar 5 segundos
						borrarpantalla
						
						Escribir "Ingrese el número completo que vio hasta recién: ";
						Leer primerNumero;
						Leer segundoNumero;
						Leer tercerNumero;			
						Leer cuartoNumero;		
						Si primerNumero == arrayJuegoMemoria[0] y segundoNumero  == arrayJuegoMemoria[1] y tercerNumero == arrayJuegoMemoria[2] y cuartoNumero == arrayJuegoMemoria[3] entonces
							Escribir "Bien, le pegaste"
						Sino 
							Escribir "Le erraste giiiiiil";
						Finsi
					Sino
						Si f==4 entonces // PARA ADIVINAR EL QUINTO NÚMERO
							Mostrar arrayJuegoMemoria[0];
							Mostrar arrayJuegoMemoria[1];
							Mostrar arrayJuegoMemoria[2];
							Mostrar arrayJuegoMemoria[3];
							Mostrar arrayJuegoMemoria[4];
							
							esperar 5 segundos
							borrarpantalla
							
							Escribir "Ingrese el número completo que vio hasta recién: ";
							Leer primerNumero;
							Leer segundoNumero;
							Leer tercerNumero;			
							Leer cuartoNumero;		
							Leer quintoNumero;		
							Si primerNumero == arrayJuegoMemoria[0] y segundoNumero  == arrayJuegoMemoria[1] y tercerNumero == arrayJuegoMemoria[2] y cuartoNumero == arrayJuegoMemoria[3] y quintoNumero == arrayJuegoMemoria[4]entonces
								Escribir "Bien, le pegaste"
							Sino 
								Escribir "Le erraste giiiiiil";
							Finsi
						Sino
							Si f==5 entonces // PARA ADIVINAR EL SEXTO NÚMERO
								Mostrar arrayJuegoMemoria[0];
								Mostrar arrayJuegoMemoria[1];
								Mostrar arrayJuegoMemoria[2];
								Mostrar arrayJuegoMemoria[3];
								Mostrar arrayJuegoMemoria[4];
								Mostrar arrayJuegoMemoria[5];
								
								esperar 5 segundos
								borrarpantalla
								
								Escribir "Ingrese el número completo que vio hasta recién: ";
								Leer primerNumero;
								Leer segundoNumero;
								Leer tercerNumero;			
								Leer cuartoNumero;		
								Leer quintoNumero;	
								Leer sextoNumero;
								Si primerNumero == arrayJuegoMemoria[0] y segundoNumero  == arrayJuegoMemoria[1] y tercerNumero == arrayJuegoMemoria[2] y cuartoNumero == arrayJuegoMemoria[3] y quintoNumero == arrayJuegoMemoria[4] y sextoNumero == arrayJuegoMemoria[5] entonces
									Escribir "Bien, le pegaste"
								Sino 
									Escribir "Le erraste giiiiiil";
								Finsi
							Sino
								Si f==6 entonces // PARA ADIVINAR EL SÉPTIMO NÚMERO
									Mostrar arrayJuegoMemoria[0];
									Mostrar arrayJuegoMemoria[1];
									Mostrar arrayJuegoMemoria[2];
									Mostrar arrayJuegoMemoria[3];
									Mostrar arrayJuegoMemoria[4];
									Mostrar arrayJuegoMemoria[5];
									Mostrar arrayJuegoMemoria[6];
									
									esperar 5 segundos
									borrarpantalla
									
									Escribir "Ingrese el número completo que vio hasta recién: ";
									Leer primerNumero;
									Leer segundoNumero;
									Leer tercerNumero;			
									Leer cuartoNumero;		
									Leer quintoNumero;	
									Leer sextoNumero;
									Leer septimoNumero;
									Si primerNumero == arrayJuegoMemoria[0] y segundoNumero  == arrayJuegoMemoria[1] y tercerNumero == arrayJuegoMemoria[2] y cuartoNumero == arrayJuegoMemoria[3] y quintoNumero == arrayJuegoMemoria[4] y sextoNumero == arrayJuegoMemoria[5] y septimoNumero == arrayJuegoMemoria[6] entonces
										Escribir "Bien, le pegaste"
									Sino 
										Escribir "Le erraste giiiiiil";
									Finsi
								Sino
									Si f==7 entonces // PARA ADIVINAR EL OCTAVO NÚMERO
										Mostrar arrayJuegoMemoria[0];
										Mostrar arrayJuegoMemoria[1];
										Mostrar arrayJuegoMemoria[2];
										Mostrar arrayJuegoMemoria[3];
										Mostrar arrayJuegoMemoria[4];
										Mostrar arrayJuegoMemoria[5];
										Mostrar arrayJuegoMemoria[6];
										Mostrar arrayJuegoMemoria[7];
										
										esperar 5 segundos
										borrarpantalla
										
										Escribir "Ingrese el número completo que vio hasta recién: ";
										Leer primerNumero;
										Leer segundoNumero;
										Leer tercerNumero;			
										Leer cuartoNumero;		
										Leer quintoNumero;	
										Leer sextoNumero;
										Leer septimoNumero;
										Leer octavoNumero;
										
										Si primerNumero == arrayJuegoMemoria[0] y segundoNumero  == arrayJuegoMemoria[1] y tercerNumero == arrayJuegoMemoria[2] y cuartoNumero == arrayJuegoMemoria[3] y quintoNumero == arrayJuegoMemoria[4] y sextoNumero == arrayJuegoMemoria[5] y septimoNumero == arrayJuegoMemoria[6] y octavoNumero == arrayJuegoMemoria[7] entonces
											Escribir "Bien, le pegaste"
										Sino 
											Escribir "Le erraste giiiiiil";
										Finsi
									Sino
										Si f==8 entonces // PARA ADIVINAR EL NOVENO NÚMERO
											Mostrar arrayJuegoMemoria[0];
											Mostrar arrayJuegoMemoria[1];
											Mostrar arrayJuegoMemoria[2];
											Mostrar arrayJuegoMemoria[3];
											Mostrar arrayJuegoMemoria[4];
											Mostrar arrayJuegoMemoria[5];
											Mostrar arrayJuegoMemoria[6];
											Mostrar arrayJuegoMemoria[7];
											Mostrar arrayJuegoMemoria[8];
											
											esperar 5 segundos
											borrarpantalla
											
											Escribir "Ingrese el número completo que vio hasta recién: ";
											Leer primerNumero;
											Leer segundoNumero;
											Leer tercerNumero;			
											Leer cuartoNumero;		
											Leer quintoNumero;	
											Leer sextoNumero;
											Leer septimoNumero;
											Leer octavoNumero;
											Leer novenoNumero;
											
											Si primerNumero == arrayJuegoMemoria[0] y segundoNumero  == arrayJuegoMemoria[1] y tercerNumero == arrayJuegoMemoria[2] y cuartoNumero == arrayJuegoMemoria[3] y quintoNumero == arrayJuegoMemoria[4] y sextoNumero == arrayJuegoMemoria[5] y septimoNumero == arrayJuegoMemoria[6] y octavoNumero == arrayJuegoMemoria[7] y novenoNumero == arrayJuegoMemoria[8] entonces
												Escribir "Bien, le pegaste"
											Sino 
												Escribir "Le erraste giiiiiil";
											Finsi
										Sino
											Si f==9 entonces // PARA ADIVINAR EL DECIMO NÚMERO
												Mostrar arrayJuegoMemoria[0];
												Mostrar arrayJuegoMemoria[1];
												Mostrar arrayJuegoMemoria[2];
												Mostrar arrayJuegoMemoria[3];
												Mostrar arrayJuegoMemoria[4];
												Mostrar arrayJuegoMemoria[5];
												Mostrar arrayJuegoMemoria[6];
												Mostrar arrayJuegoMemoria[7];
												Mostrar arrayJuegoMemoria[8];
												Mostrar arrayJuegoMemoria[9];
												
												esperar 5 segundos
												borrarpantalla
												
												Escribir "Ingrese el número completo que vio hasta recién: ";
												Leer primerNumero;
												Leer segundoNumero;
												Leer tercerNumero;			
												Leer cuartoNumero;		
												Leer quintoNumero;	
												Leer sextoNumero;
												Leer septimoNumero;
												Leer octavoNumero;
												Leer novenoNumero;
												Leer decimoNumero;
												
												Si primerNumero == arrayJuegoMemoria[0] y segundoNumero  == arrayJuegoMemoria[1] y tercerNumero == arrayJuegoMemoria[2] y cuartoNumero == arrayJuegoMemoria[3] y quintoNumero == arrayJuegoMemoria[4] y sextoNumero == arrayJuegoMemoria[5] y septimoNumero == arrayJuegoMemoria[6] y octavoNumero == arrayJuegoMemoria[7] y novenoNumero == arrayJuegoMemoria[8] y decimoNumero == arrayJuegoMemoria[9] entonces
													Escribir "Bien, le pegaste"
												Sino 
													Escribir "Le erraste giiiiiil";
												Finsi
											Finsi
										Finsi	
									Finsi
								Finsi
							Finsi
						Finsi		
					Finsi		
				Finsi
			Finsi
		Finsi
		
		
		//Hasta que 
	Finpara

FinFuncion
	