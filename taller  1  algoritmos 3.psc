Proceso taller_1_de_algoritmos_3 
//realizar un menú con 6 opciones que contenga los siguientes ejercicios.	
//1.Vector llamado num con los siguientes números (20,14,8,0,5,19,24).
//2.Vector de 5 posiciones con los números que desees.
//3.Dos vetores;uno para almacenar 	nombres y el otro  3 numeros.
//4.suma de elementos  de un vector  de tamaño 5.
//5.suma de elementos de dos vectores,(resultado guardado en otro vector).
//6.salir.
	
definir opcionmenu,opcion,nomb como texto;	
definir num,i,j,k,temp,valorn,num1,num2,resul,num3,num5,suma como numerico;	
definir suma1,suma2,sumat como numerico;
definir regresar,repetirp como logico;	
dimension num[7],valorn[5],nomb[2],num3[3],num5[5],num1[5],num2[5],resul[1];

regresar=verdadero;	
mientras regresar= verdadero hacer
limpiar pantalla;
escribir"";	
escribir "       *¡HOLA¡ BIENVENIDO A ESTE PROGRAMA*";
escribir"       ------------------------------------- ";
escribir"           ----------------------------";
escribir"              ----------------------";
escribir "                 Menú de opciones ";
escribir"";
escribir " Elige cual de las siguientes opciones deseas ejecutar:";
escribir"";
escribir" 1.LOS NÚMEROS(20,14,8,0,5,19,24)UBICADOS EN ORDEN";	
escribir" 2.INGRESO DE 5 NÚMEROS QUE DESEES ARCHIVADOS EN ORDEN ";
escribir" 3.INGRESO DE 2 NOMBRES Y 3 NÚMEROS UBICADOS EN CARPETA";
escribir" 4.INGRESO Y SUMA DE 5 ELEMENTOS QUE DESEES ALMACENADOS";
escribir" 5.INGRESO Y SUMA DE DOS SECCIONES DE 5 ELEMENTOS"; 
escribir" 6.SALIR";	
leer opcionmenu;	
	
segun opcionmenu hacer
	
	"1"://1.Crear un vector llamado num que almacene los siguientes datos: 20, 14, 8, 0, 5, 19 y 24
		repetirp=verdadero;
		mientras repetirp = verdadero hacer
			limpiar pantalla;	
		num[0]=0;
		num[1]=8;	
		num[2]=5;	
		num[3]=14;	
		num[4]=19;	
		num[5]=20;	
		num[6]=24;
		escribir"";
		escribir "1.LOS NÚMEROS(20,14,8,0,5,19,24)UBICADOS EN ORDEN ";
		escribir"";
		escribir " Datos almacenados en el siguiente orden:";
		escribir"";
		para i=0 hasta 6 con paso 1 hacer
			esperar 1 segundo;
			escribir " En la casilla [",1+i,"]--esta  El dato # ", num[i];
		FinPara
		escribir"";
		escribir " *SEGUN LAS SIGUIENTES OPCIONES.¿QUE DESEAS HACER?";
		escribir"";
		escribir " A.Repetir el proceso.";
		escribir " B.Regresar al menu.";
		escribir " C.Salir.";
		leer opcion;
		opcion = mayusculas (opcion);
		segun opcion hacer
			"A":
				repetirp=verdadero;
			"B":
				repetirp=falso;
				regresar=verdadero;
			"C":
				limpiar pantalla;
				repetirp=falso;
				regresar=falso;
				escribir"";
				escribir"";
				esperar 2 segundos;
				escribir" *GRACIAS POR USAR EL SOFTWARE*";
			de otro modo:
				limpiar pantalla;
				repetirp=falso;
				regresar=falso;
				escribir "Opcion incorrecta.";
				escribir"";
				esperar 2 segundos;
				escribir"*GRACIAS POR USAR EL SOFTWARE*";
		FinSegun
		finmientras
		
	"2"://2.Crear un vector de 5 posiciones y llénelo con los números que el usuario desee.
	    repetirp=verdadero;
		mientras repetirp = verdadero hacer
			limpiar pantalla;
			escribir"";
			escribir " INGRESO DE 5 NÚMEROS QUE DESEES ARCHIVADOS EN ORDEN ";
			escribir"";
		para i=0 hasta 4 con paso 1 hacer
			escribir sin saltar " Ingresa el número ",i+1,"-";
			leer valorn[i];
		FinPara
		para i=0 hasta 4 con paso 1 hacer
			Para j=i+1 hasta 4 con paso 1 Hacer
				si valorn[i]>valorn[j] Entonces
					temp=valorn[i];
					valorn[i]=valorn[j];
					valorn[j]=temp;
				FinSi
			FinPara
		FinPara
		escribir"";
		escribir " Números ingresados y archivados en el siguiente orden:";
		escribir"";
		para k=0 hasta 4 con paso 1 Hacer
			esperar 1 segundo;
			escribir" En la posicion[",k+1,"]--- Esta el # ",valorn[k] ;
		FinPara
		escribir"";
		escribir "*SEGUN LAS SIGUIENTES OPCIONES.¿QUE DESEAS HACER?";
		escribir"";
		escribir " A.Repetir el proceso.";
		escribir " B.Regresar al menu.";
		escribir " C.salir.";
		leer opcion;
		opcion=mayusculas(opcion);
		segun opcion hacer
			"A":
				repetirp=verdadero;
			"B":
				repetirp=falso;
				regresar=verdadero;
			"C":
				limpiar pantalla;
				repetirp=falso;
				regresar=falso;
				esperar 2 segundos;
				escribir"";
				escribir"";
				escribir"";
				escribir"*GRACIAS POR USAR EL SOFTWARE*";
			de otro modo:
				limpiar pantalla;
				repetirp=falso;
				regresar=falso;
				escribir"";
				escribir "Opcion incorrecta.";
				escribir"";
				esperar 2 segundos;
				escribir"";
				escribir"";
				escribir"*GRACIAS POR USAR EL SOFTWARE*";
		FinSegun
		finmientras
		
	"3"://3.Crear dos vectores uno que almacene 2 nombres y otro que almacene 3 números.
		repetirp=verdadero;
		mientras repetirp = verdadero hacer
			limpiar pantalla;
		    escribir"3.INGRESO DE 2 NOMBRES Y 3 NÚMEROS UBICADOS EN CARPETA";
			escribir"";
		para i=0 hasta 1 con paso 1 Hacer
			escribir sin saltar" Ingresa el ", i+1,"° Nombre:";
			leer nomb[i];
		FinPara
		escribir"";
		para i=0 hasta 2 con paso 1 Hacer
			escribir sin saltar " Ingresa el ",i+1,"° número ";
			leer num3[i];
		FinPara
		limpiar pantalla;
		escribir"";
		escribir" Los nombres se ubicaron el el siguiente orden:";
		escribir"";
		para i=0 hasta 1 con paso 1 Hacer
			escribir" ",  nomb[i]," Esta  en la carpeta # ",i+1;
		FinPara
		escribir"";
		escribir" Los números se ubicaron en el siguiente orden:";
		escribir"";
		para i=0 hasta 2 con paso 1 Hacer
			escribir " El número ",num3[i]," Esta en la carpeta ",i+1;
		FinPara
		escribir"";
		escribir "*SEGUN LAS SIGUIENTES OPCIONES:¿QUE DESEAS HACER?";
		escribir"";
		escribir " A.Repetir el proceso.";
		escribir " B.Regresar al menu.";
		escribir " C.Salir.";
		leer opcion;
		opcion=mayusculas(opcion);
		segun opcion hacer
			"A":
				repetirp=verdadero;
			"B":
				repetirp=falso;
				regresar=verdadero;
			"C":
				limpiar pantalla;
				repetirp=falso;
				regresar=falso;
				escribir"";
				escribir"";
				escribir"";
				esperar 2 segundos;
				escribir"*GRACIAS POR USAR EL SOFTWARE*";
			de otro modo:
				limpiar pantalla;
				repetirp=falso;
				regresar=falso;
				escribir "Opcion incorrecta.";
				escribir"";
				esperar 2 segundos;
				escribir"*GRACIAS POR USAR EL SOFTWARE*";
		FinSegun
		finmientras
	"4"://4.Sumar todos los elementos de un vector de tamaño 5.repetirp=verdadero;
		repetirp = verdadero;
		mientras repetirp = verdadero hacer
			limpiar pantalla;
		escribir"";
		escribir" 4.SUMA DE 5 ELEMENTOS QUE DESEES INGRESAR";
		escribir"";
		suma=0;
		i=0;
		para i=0 hasta 4 hacer
			escribir sin saltar" Ingrese el elemento # ",i+1;
			leer num5[i];
			suma=suma+num5[i];
		FinPara
		escribir"";
		escribir" El resultado de los elementos que ingresaste es:"; 
		escribir"";
		para i=0 hasta 4 hacer
			esperar 1 segundo;
			escribir" + ", num5[i]; sin saltar
		FinPara
		escribir " = ",suma;
		escribir"";
		escribir "*SEGUN LAS SIGUIENTES OPCIONES:¿QUE DESEAS HACER?";
		escribir"";
		escribir " A.Repetir el proceso.";
		escribir " B.Regresar al menu.";
		escribir " C.Salir.";
		leer opcion;
		opcion=mayusculas(opcion);
		segun opcion hacer
			"A":
				repetirp=verdadero;
			"B":
				repetirp=falso;
				regresar=verdadero;
			"C":
				limpiar pantalla;
				repetirp=falso;
				regresar=falso;
				escribir"";
				escribir"";
				escribir"";
				esperar 2 segundos;
				escribir"*GRACIAS POR USAR EL SOFTWARE*";
			de otro modo:
				limpiar pantalla;
				repetirp=falso;
				regresar=falso;
				escribir "Opcion incorrecta.";
				escribir"";
				esperar 2 segundos;
				escribir"*GRACIAS POR USAR EL SOFTWARE*";
		FinSegun
		finmientras
	"5"://5.Sumar los elementos de dos vectores,cada uno de 5 posiciones 
		// y guardar el resultado en otro vector en 1 posición.
		
		repetirp = verdadero;
		mientras repetirp = verdadero hacer
			limpiar pantalla;
			escribir"";
			escribir" 5.INGRESO Y SUMA DE DOS SECCIONES DE 5 ELEMENTOS";
			escribir"";
		suma1 =0;
		escribir" Ingresa 5 elementos en las  siguientes  2 secciones ";
		escribir"";
		escribir" SECCIÓN NÚMERO 1";
		
		para i=0 hasta 4 hacer
			escribir sin saltar" Ingrese el elemento # ",i+1;
			leer num1[i];
			suma1=suma1+num1[i];
		FinPara
		
		escribir" la suma total de los elementos que ingresaste es:";
		para i=0 hasta 4 hacer
			esperar 1 segundo;
			escribir" + ", num1[i]; sin saltar
		FinPara
		escribir " = ",suma1;
		escribir"";
		escribir" SECCIÓN NÚMERO 2";
		suma2=0;
		
		para j=0 hasta 4 hacer
			escribir sin saltar" Ingrese el elemento # ",j+1;
			leer num2[j];
			suma2=suma2+num2[j];
		FinPara
		escribir" la suma total de los elementos que ingresaste son:";
		
		para j=0 hasta 4 hacer
			esperar 1 segundo;
			escribir" + ", num2[j]; sin saltar
		FinPara
		escribir " = ",suma2;
		
		num1[4]=suma1;
		num2[4]=suma2;
		sumat=num1[4]+num2[4];
		resul[0]=sumat;
		escribir"";
		escribir"";
		escribir " El resultado de la primera seccion  es:",suma1;
		escribir " El resultado de la segunda seccion  es:",suma2;
		k=0;
		para k=0 hasta 0 con paso 1 hacer
			escribir" Total suma de las dos secciones es:--- ",resul[k];
			escribir" El numero /",resul[k],"/ esta en la posición ----[",k+1,"]";
		FinPara
		escribir"";
		escribir "*SEGUN LAS SIGUIENTES OPCIONES:¿QUE DESEAS HACER?";
		escribir"";
		escribir " A.Repetir el proceso.";
		escribir " B.Regresar al menu.";
		escribir " C.Salir.";
		leer opcion;
		opcion=mayusculas(opcion);
		segun opcion hacer
			"A":
				repetirp=verdadero;
			"B":
				repetirp=falso;
				regresar=verdadero;
			"C":
				limpiar pantalla;
				repetirp=falso;
				regresar=falso;
				esperar 2 segundos;
				escribir"";
				escribir"";
				escribir"";
				escribir"*GRACIAS POR USAR EL SOFTWARE*";
			de otro modo:
				limpiar pantalla;
				repetirp=falso;
				regresar=falso;
				escribir "Opcion incorrecta.";
				escribir"";
				esperar 2 segundos;
				escribir"   *GRACIAS POR USAR EL SOFTWARE*";
		FinSegun
		finmientras
		
	"6"://salir.
		limpiar pantalla;
		regresar= falso;
		escribir"";
		escribir"";
		escribir"";
		escribir"    GRACIAS POR USAR EL SOFTWARE";
		esperar 2 segundos;
		escribir"";
		escribir"";
	de otro modo:
		regresar=falso;
		limpiar pantalla;
		escribir"";
		escribir "   Opcion incorrecta";
		escribir"";
		esperar 2 segundos;
		escribir"";
		escribir"";
		escribir"";
		escribir"   *GRACIAS POR USAR EL SOFTWARE*";
	FinSegun//cuando finalize todas las opciones
FinMientras	
FinProceso
