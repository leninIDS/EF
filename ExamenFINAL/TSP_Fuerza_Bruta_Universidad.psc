Algoritmo TSP_Fuerza_Bruta_Universidad
	Definir distancias Como Entero
	Dimensionar distancias(6,6)
	distancias[1,1]<-0
	distancias[1,2]<-10
	distancias[1,3]<-15
	distancias[1,4]<-20
	distancias[1,5]<-25
	distancias[2,1]<-10
	distancias[2,2]<-0
	distancias[2,3]<-35
	distancias[2,4]<-25
	distancias[2,5]<-10
	distancias[3,1]<-15
	distancias[3,2]<-35
	distancias[3,3]<-0
	distancias[3,4]<-30
	distancias[3,5]<-5
	distancias[4,1]<-20
	distancias[4,3]<-30
	distancias[4,4]<-0
	distancias[4,5]<-15
	distancias[5,1]<-25
	distancias[4,2]<-25
	distancias[5,2]<-10
	distancias[5,3]<-5
	distancias[5,4]<-15
	distancias[5,5]<-0
	Definir costo_minimo, costo_actual Como Entero
	costo_minimo <- 999999
	Definir c1, c2, c3, c4 Como Entero
	
	Para c1<-2 Hasta 5 Hacer
		Para c2<-2 Hasta 5 Hacer
			Para c3<-2 Hasta 5 Hacer
				Para c4<-2 Hasta 5 Hacer
					
					Si c1<>c2 Y c1<>c3 Y c1<>c4 Y c2<>c3 Y c2<>c4 Y c3<>c4 Entonces
						costo_actual <- distancias[1,c1]+distancias[c1,c2]+distancias[c2,c3]+distancias[c3,c4]+distancias[c4,1]
						Si costo_actual<costo_minimo Entonces
							costo_minimo <- costo_actual
						FinSi
					FinSi
				FinPara
			FinPara
		FinPara
	FinPara
	Escribir '========================================='
	Escribir '     SOLUCION FUERZA BRUTA 			    '
	Escribir '========================================='
	Escribir 'Costo de la ruta optima calculada: ', costo_minimo, ' km'
	Escribir '========================================='
FinAlgoritmo
