/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testarreglos;

/**
 *
 * @author Soporte
 */
import java.util.Scanner;

public class TestArreglos {
        static Scanner entrada = new Scanner(System.in);
	public static void main(String[] args) {
		//Inicializacion de variables
		float promedio = 0;
		float suma = 0;
		int mayor = 0;
		int menor = 0;
                //Definiciòn del arreglo    
		int[] miArreglo = new int[10];
                //Ingreso o asignaciòn de valores al vector
		for (int i = 0; i < 10; i++) {
			System.out.println("Ingrese el número en la posición " + (i) + " :");
			miArreglo[i] = entrada.nextInt();
		}
		// Busqueda del elemento mayor dentro del vector
		for (int i = 0; i < miArreglo.length; i++) {
			suma += miArreglo[i];			
			if (mayor < miArreglo[i]) {
				mayor = miArreglo[i];
			}
			System.out.println(String.format("Posición [%d] Elemento: %d", i,
					miArreglo[i]));
		}
		menor = mayor;
		// busqueda del elemento menor dentro del vector
		for (int i = 0; i < miArreglo.length; i++) {
			if (menor > miArreglo[i]) {
				menor = miArreglo[i];
			}
		}
                //promedio
                promedio = suma / miArreglo.length;
		System.out.println("***Salida***");
		// contar las veces que se repite cada número
		int cont;
		for (int i = 0; i < miArreglo.length; i++) {
			cont = 0;
			for (int j = i; j < miArreglo.length; j++) {
				if (miArreglo[i] == miArreglo[j]) {
					cont++;
				}
			}
			System.out.println(String.format("El número %d se repite %d veces",
					miArreglo[i], cont));
		}
		System.out.println(String.format("La suma es %.2f, el promedio es %.2f, el mayor es %d, el menor es %d",
								suma, promedio, mayor, menor));
	}

}