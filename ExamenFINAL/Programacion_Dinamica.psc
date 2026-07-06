Algoritmo TSP_Programacion_Dinamica
    Definir distancias, memo Como Entero
    Definir i, j, mask, u, v Como Entero
    Definir min_costo, bit_v, prox_mask, costo_retornado Como Entero
    
    Dimension distancias[5,5]
    Dimension memo[32, 5] 
    
    distancias[0,0]<-0;  distancias[0,1]<-10; distancias[0,2]<-15; distancias[0,3]<-20; distancias[0,4]<-25
    distancias[1,0]<-10; distancias[1,1]<-0;  distancias[1,2]<-35; distancias[1,3]<-25; distancias[1,4]<-10
    distancias[2,0]<-15; distancias[2,1]<-35; distancias[2,2]<-0;  distancias[2,3]<-30; distancias[2,4]<-5
    distancias[3,0]<-20; distancias[3,1]<-25; distancias[3,2]<-30; distancias[3,3]<-0;  distancias[3,4]<-15
    distancias[4,0]<-25; distancias[4,1]<-10; distancias[4,2]<-5;  distancias[4,3]<-15; distancias[4,4]<-0
    
    Para i <- 0 Hasta 31 Hacer
        Para j <- 0 Hasta 4 Hacer
            memo[i,j] <- -1
        FinPara
    FinPara
    
    Para mask <- 31 Hasta 1 Con Paso -1 Hacer
        Para u <- 0 Hasta 4 Hacer
            Si mask = 31 Entonces
                memo[mask, u] <- distancias[u, 0]
            Sino
                min_costo <- 999999
                Para v <- 0 Hasta 4 Hacer
                    bit_v <- Trunc(mask / (2^v)) Mod 2
                    Si bit_v = 0 Entonces
                        prox_mask <- mask + (2^v)
                        costo_retornado <- memo[prox_mask, v]
                        Si costo_retornado <> -1 Entonces
                            Si (distancias[u,v] + costo_retornado) < min_costo Entonces
                                min_costo <- distancias[u,v] + costo_retornado
                            FinSi
                        FinSi
                    FinSi
                FinPara
                Si min_costo <> 999999 Entonces
                    memo[mask, u] <- min_costo
                FinSi
            FinSi
        FinPara
    FinPara
    
    Escribir "=== PROGRAMACION DINAMICA ==="
    Escribir "Costo minimo optimizado: ", memo[1,0], " km"
FinAlgoritmo