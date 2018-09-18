object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	var peso = 300
	method precio() = 12
	method peso() = peso
	method gusto() = "chocolate"
	method libreGluten() = false
	method mordisco() { peso = peso * 0.8 }
}

object caramelo {
	var peso = 5
	method precio() = 1
	method peso() = peso
	method gusto() = "naranja"
	method libreGluten() = true
	method mordisco() { peso -= 1 }
}

object chupetin {
	var peso = 7
	method precio() = 2
	method peso() = peso
	method gusto() = "frutilla"
	method libreGluten() = true
	method mordisco() = if ( peso > 2 ) { peso = peso * 0.10 } else {}
}

object oblea {
	var peso = 250
	method precio() = 5
	method peso() = peso
	method gusto() = "vainilla"
	method libreGluten() = false
	method mordisco() = if ( peso > 70 ) { peso = peso * 0.5 } else { peso = peso * 0.25 }
}

object chocolatin {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial 
	var pesoActual   
	method precio() = 0.50 * pesoInicial
	method peso() = pesoActual 
	method gusto() = "chocolate"
	method libreGluten() = false
	method mordisco() { pesoActual = pesoActual - 2 }
	
	
	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() = golosinaInterior.precio() + 2 
	method peso() = golosinaInterior.peso() + pesoBanio
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() = golosinaInterior.libreGluten()
}

object tuttifrutti {
	var esLibreGluten = true
	var gusto 
	method peso() = 5
	method libreGluten() = esLibreGluten
	method precio() = if ( esLibreGluten ) 7 else 10
	method gusto() = gusto 
	method mordisco() = {}
	                    
	
}

